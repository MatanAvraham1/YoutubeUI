import 'package:http/http.dart' as http;
import 'package:youtube/constants/db.dart';

import 'package:youtube/models/user.dart';

class Video {
  User owner;
  String title;
  String description;
  DateTime publishDate;
  Duration duration;
  int views;
  int likes;
  int dislikes;
  String thumbnailUrl;
  String id;

  Video(
      {this.owner,
      this.title,
      this.views,
      this.likes,
      this.duration,
      this.description,
      this.dislikes,
      this.publishDate,
      this.thumbnailUrl,
      this.id}) {
    this.thumbnailUrl =
        "https://img.youtube.com/vi/${this.id}/maxresdefault.jpg";
  }

  static Future<Video> fromUrl(String videoUrl) async {
    Video video = Video();

    video.thumbnailUrl = "https://img.youtube.com/vi/" +
        videoUrl.split("?v=")[1] +
        "/maxresdefault.jpg";

    var response = await http.get(
        Uri.https("youtube.com", "watch", {"v": videoUrl.split("?v=").last}));

    int titleStartIndex = response.body.indexOf('"title":{"simpleText":"');
    int titleEndIndex =
        response.body.indexOf('"},"description"', titleStartIndex);
    video.title = response.body
        .substring(titleStartIndex, titleEndIndex)
        .replaceAll('"title":{"simpleText":"', "");

    int descriptionStartIndex =
        response.body.indexOf(',"description":{"simpleText":"', titleEndIndex);
    int descriptionEndIndex =
        response.body.indexOf('"},', descriptionStartIndex);
    video.description = response.body
        .substring(descriptionStartIndex, descriptionEndIndex)
        .replaceAll(',"description":{"simpleText":"', "");

    int durationStartIndex =
        response.body.indexOf(',"lengthSeconds":"', descriptionEndIndex);
    int durationEndIndex =
        response.body.indexOf('","ownerProfileUrl":', durationStartIndex);
    video.duration = Duration(
        seconds: int.parse(response.body
            .substring(durationStartIndex, durationEndIndex)
            .replaceAll(',"lengthSeconds":"', "")));

    int viewsStartIndex =
        response.body.indexOf('"viewCount":"', durationEndIndex);
    int viewsEndIndex = response.body.indexOf('","', viewsStartIndex);
    video.views = int.parse(response.body
        .substring(viewsStartIndex, viewsEndIndex)
        .replaceAll('"viewCount":"', "")
        .replaceAll(",", ""));

    int publishDateStartIndex =
        response.body.indexOf(',"publishDate":"', viewsEndIndex);
    int publishDateEndIndex =
        response.body.indexOf('",', publishDateStartIndex);
    video.publishDate = DateTime.parse(response.body
        .substring(publishDateStartIndex, publishDateEndIndex)
        .replaceAll(',"publishDate":"', ""));

    int ownerNameStartIndex =
        response.body.indexOf(',"ownerChannelName":"', publishDateEndIndex);
    int ownerNameEndIndex = response.body.indexOf('",', ownerNameStartIndex);

    video.owner = users
        .where((element) =>
            element.username ==
            response.body
                .substring(ownerNameStartIndex, ownerNameEndIndex)
                .replaceAll(',"ownerChannelName":"', ""))
        .first;

    int likesStartIndex = response.body.indexOf(
        '{"iconType":"LIKE"},"defaultText":{"accessibility":{"accessibilityData":{"label":"');
    int likesEndIndex = response.body.indexOf(' ', likesStartIndex);
    video.likes = int.parse(response.body
        .substring(likesStartIndex, likesEndIndex)
        .replaceAll(
            '{"iconType":"LIKE"},"defaultText":{"accessibility":{"accessibilityData":{"label":"',
            "")
        .replaceAll(",", ""));

    int dislikesStartIndex = response.body.indexOf(
        '{"iconType":"DISLIKE"},"defaultText":{"accessibility":{"accessibilityData":{"label":"');
    int dislikesEndIndex = response.body.indexOf(' ', dislikesStartIndex);
    video.dislikes = int.parse(response.body
        .substring(dislikesStartIndex, dislikesEndIndex)
        .replaceAll(
            '{"iconType":"DISLIKE"},"defaultText":{"accessibility":{"accessibilityData":{"label":"',
            "")
        .replaceAll(",", ""));

    return video;
  }
}
