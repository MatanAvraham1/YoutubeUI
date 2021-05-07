import 'package:youtube/models/user.dart';
import 'package:youtube/models/video.dart';

final users = [
  User(
      username: "כאן 11 - תאגיד השידור הישראלי",
      subscribers: 343143,
      profilePhotoUrl:
          "https://yt3.ggpht.com/ytc/AAUvwnhQ1yZ9u78xnhJSbQxshthBT3amKp1JW0MJ9W9b2A=s176-c-k-c0x00ffffff-no-rj"),
  User(
      username: "הגר יפת- הערוץ הרשמי",
      subscribers: 45730,
      profilePhotoUrl:
          "https://yt3.ggpht.com/ytc/AAUvwngW-HmfvPcyt9JX59wiZKuqa4GfD2C2YiwA8SKo=s88-c-k-c0x00ffffff-no-rj-mo"),
  User(
      username: "התקווה6\ Hatikva6 ",
      subscribers: 69232,
      profilePhotoUrl:
          "https://yt3.ggpht.com/ytc/AAUvwngQeG2NZHdD_X47UAJUmWYFEwZQ_es1yVoh7kLzBg=s176-c-k-c0x00ffffff-no-rj"),
  User(
      username: "MoshikoMOfficial",
      subscribers: 152213,
      profilePhotoUrl:
          "https://yt3.ggpht.com/ytc/AAUvwnie-jd1-Ftc6U_28ZFkOvHdOncoXs69Sva1cglLRg=s176-c-k-c0x00ffffff-no-rj-mo")
];

// final videos = [
//   [
//     "https://www.youtube.com/watch?v=XQm9gH8LXng",
//     "https://www.youtube.com/watch?v=ANFnzMdHasE",
//     "https://www.youtube.com/watch?v=enuT-G89bB8",
//     "https://www.youtube.com/watch?v=rea6p5-zSUY",
//   ],
//   [
//     "https://www.youtube.com/watch?v=QWri-BPD9Po",
//     "https://www.youtube.com/watch?v=bExiWFhSRGk",
//     "https://www.youtube.com/watch?v=WYZi5rL9JZU",
//     "https://www.youtube.com/watch?v=47MxVYvN1zU",
//   ],
//   [
//     "https://www.youtube.com/watch?v=V5SpIgH7VHI",
//     "https://www.youtube.com/watch?v=Z5Az2gUA1Sc",
//     "https://www.youtube.com/watch?v=Smw0P4sGWZQ",
//     "https://www.youtube.com/watch?v=oZ05DVEE1JE",
//   ],
//   [
//     "https://www.youtube.com/watch?v=oLaCJoVg8ss",
//     "https://www.youtube.com/watch?v=T0wXOx9BTBQ",
//     "https://www.youtube.com/watch?v=U1v88lz62u0",
//     "https://www.youtube.com/watch?v=czL4RY-Mb9w",
//   ]
// ];

// final videos = [
//   [
//     Video(
//       owner: users[0],
//       title: "פסטיבל מספרי סיפורים | עד שההיסטוריה תשפוט בנינו - חלק א\'",
//       publishDate: DateTime.parse("2021-05-07"),
//       duration: Duration(seconds: 3132),
//       views: 74,
//       likes: 1,
//       dislikes: 1,
//       id: "XQm9gH8LXng",
//     ),
//     Video(
//       owner: users[0],
//       title:
//           "אסתר רדא - מים מתוקים | בהופעה מתוך \'\'ארון השירים היהודי\'\' כאן 11",
//       publishDate: DateTime.parse("2021-05-07"),
//       duration: Duration(seconds: 213),
//       views: 121,
//       likes: 3,
//       dislikes: 3,
//       id: "ANFnzMdHasE",
//     ),
//     Video(
//       owner: users[0],
//       title: "ארון השירים היהודי עם עומר בן רובי | אסתר רדא - פרק 16",
//       publishDate: DateTime.parse("2021-05-07"),
//       duration: Duration(seconds: 1715),
//       views: 152,
//       likes: 10,
//       dislikes: 1,
//       id: "enuT-G89bB8",
//     ),
//     Video(
//         owner: users[0],
//         title:
//             "העתיד כבר כאן - ההמצאות והחוקרים שישנו את פני הרפואה | פרק 2: לחווט את המוח מחדש",
//         publishDate: DateTime.parse("2021-04-27"),
//         duration: Duration(seconds: 1867),
//         views: 24303,
//         likes: 442,
//         dislikes: 18,
//         id: "rea6p5-zSUY")
//   ],
//   [
//     Video(
//         owner: users[1],
//         title: "הגר יפת - מה נהיה | Hagar yefet - ma nihiya",
//         publishDate: DateTime.parse("2021-02-23"),
//         duration: Duration(seconds: 174),
//         views: 951481,
//         likes: 4766,
//         dislikes: 204,
//         id: "QWri-BPD9Po"),
//     Video(
//         owner: users[1],
//         title: "הגר יפת - ג׳וני (Prod. By Yoni Harlev) קאבר",
//         publishDate: DateTime.parse("2020-09-22"),
//         duration: Duration(seconds: 205),
//         views: 3686239,
//         likes: 23127,
//         dislikes: 2545,
//         id: 'bExiWFhSRGk'),
//     Video(
//         owner: users[1],
//         title: "הגר יפת - חיכיתי לך | Hagar Yefet - Hikiti Lecha",
//         publishDate: DateTime.parse("2020-07-09"),
//         duration: Duration(seconds: 187),
//         views: 1775335,
//         likes: 10541,
//         dislikes: 449,
//         id: 'WYZi5rL9JZU'),
//     Video(
//         owner: users[1],
//         title: "הגר יפת - קח אותי (קאבר) |Hagar Yefet - Kach Oti",
//         publishDate: DateTime.parse("2020-05-05"),
//         duration: Duration(seconds: 220),
//         views: 785026,
//         likes: 4128,
//         dislikes: 211,
//         id: '47MxVYvN1zU')
//   ],
//   [
//     Video(
//         owner: users[2],
//         title: "התקווה 6 - המנון הלוחם",
//         publishDate: DateTime.parse("2021-04-21"),
//         duration: Duration(seconds: 200),
//         views: 333802,
//         likes: 7316,
//         dislikes: 267,
//         id: 'V5SpIgH7VHI'),
//     Video(
//         owner: users[2],
//         title: "התקווה 6 ובית השנטי - המשפחה שלי",
//         publishDate: DateTime.parse("2021-02-10"),
//         duration: Duration(seconds: 171),
//         views: 43692,
//         likes: 815,
//         dislikes: 18,
//         id: 'Z5Az2gUA1Sc'),
//     Video(
//         owner: users[2],
//         title: '!התקווה 6 - \\"מפה לשם\\',
//         publishDate: DateTime.parse("2020-12-10"),
//         duration: Duration(seconds: 63),
//         views: 17432,
//         likes: 584,
//         dislikes: 6,
//         id: 'Smw0P4sGWZQ'),
//     Video(
//         owner: users[2],
//         title: "התקווה 6 - לחזור הביתה",
//         publishDate: DateTime.parse("2020-08-05"),
//         duration: Duration(seconds: 232),
//         views: 2554143,
//         likes: 9536,
//         dislikes: 418,
//         id: 'oZ05DVEE1JE')
//   ],
//   [
//     Video(
//         owner: users[3],
//         title:
//             "מושיקו מור - פטרון (prod. By offir.c \\u0026 mash) | Moshiko Mor",
//         publishDate: DateTime.parse("2021-03-25"),
//         duration: Duration(seconds: 145),
//         views: 1565444,
//         likes: 7936,
//         dislikes: 471,
//         id: 'oLaCJoVg8ss'),
//     Video(
//         owner: users[3],
//         title: "מושיקו מור – אני כבר מאושר  By.Tamir Zur \\u0026 Osher Cohen))",
//         publishDate: DateTime.parse("2020-12-17"),
//         duration: Duration(seconds: 189),
//         views: 4423907,
//         likes: 15397,
//         dislikes: 890,
//         id: 'T0wXOx9BTBQ'),
//     Video(
//         owner: users[3],
//         title: "מושיקו מור - יפה שלי",
//         publishDate: DateTime.parse("2020-10-07"),
//         duration: Duration(seconds: 238),
//         views: 7439923,
//         likes: 16260,
//         dislikes: 1034,
//         id: 'U1v88lz62u0'),
//     Video(
//         owner: users[3],
//         title: "מושיקו מור – אל תשברי לי (prod. By offir.c)",
//         publishDate: DateTime.parse("2020-08-27"),
//         duration: Duration(seconds: 203),
//         views: 3180810,
//         likes: 15666,
//         dislikes: 811,
//         id: 'czL4RY-Mb9w')
//   ]
// ];

final videos = [
  Video(
    owner: users[0],
    title: "פסטיבל מספרי סיפורים | עד שההיסטוריה תשפוט בנינו - חלק א\'",
    publishDate: DateTime.parse("2021-05-07"),
    duration: Duration(seconds: 3132),
    views: 74,
    likes: 1,
    dislikes: 1,
    id: "XQm9gH8LXng",
  ),
  Video(
    owner: users[0],
    title:
        "אסתר רדא - מים מתוקים | בהופעה מתוך \'\'ארון השירים היהודי\'\' כאן 11",
    publishDate: DateTime.parse("2021-05-07"),
    duration: Duration(seconds: 213),
    views: 121,
    likes: 3,
    dislikes: 3,
    id: "ANFnzMdHasE",
  ),
  Video(
    owner: users[0],
    title: "ארון השירים היהודי עם עומר בן רובי | אסתר רדא - פרק 16",
    publishDate: DateTime.parse("2021-05-07"),
    duration: Duration(seconds: 1715),
    views: 152,
    likes: 10,
    dislikes: 1,
    id: "enuT-G89bB8",
  ),
  Video(
      owner: users[0],
      title:
          "העתיד כבר כאן - ההמצאות והחוקרים שישנו את פני הרפואה | פרק 2: לחווט את המוח מחדש",
      publishDate: DateTime.parse("2021-04-27"),
      duration: Duration(seconds: 1867),
      views: 24303,
      likes: 442,
      dislikes: 18,
      id: "rea6p5-zSUY"),
  Video(
      owner: users[1],
      title: "הגר יפת - מה נהיה | Hagar yefet - ma nihiya",
      publishDate: DateTime.parse("2021-02-23"),
      duration: Duration(seconds: 174),
      views: 951481,
      likes: 4766,
      dislikes: 204,
      id: "QWri-BPD9Po"),
  Video(
      owner: users[1],
      title: "הגר יפת - ג׳וני (Prod. By Yoni Harlev) קאבר",
      publishDate: DateTime.parse("2020-09-22"),
      duration: Duration(seconds: 205),
      views: 3686239,
      likes: 23127,
      dislikes: 2545,
      id: 'bExiWFhSRGk'),
  Video(
      owner: users[1],
      title: "הגר יפת - חיכיתי לך | Hagar Yefet - Hikiti Lecha",
      publishDate: DateTime.parse("2020-07-09"),
      duration: Duration(seconds: 187),
      views: 1775335,
      likes: 10541,
      dislikes: 449,
      id: 'WYZi5rL9JZU'),
  Video(
      owner: users[1],
      title: "הגר יפת - קח אותי (קאבר) |Hagar Yefet - Kach Oti",
      publishDate: DateTime.parse("2020-05-05"),
      duration: Duration(seconds: 220),
      views: 785026,
      likes: 4128,
      dislikes: 211,
      id: '47MxVYvN1zU'),
  Video(
      owner: users[2],
      title: "התקווה 6 - המנון הלוחם",
      publishDate: DateTime.parse("2021-04-21"),
      duration: Duration(seconds: 200),
      views: 333802,
      likes: 7316,
      dislikes: 267,
      id: 'V5SpIgH7VHI'),
  Video(
      owner: users[2],
      title: "התקווה 6 ובית השנטי - המשפחה שלי",
      publishDate: DateTime.parse("2021-02-10"),
      duration: Duration(seconds: 171),
      views: 43692,
      likes: 815,
      dislikes: 18,
      id: 'Z5Az2gUA1Sc'),
  Video(
      owner: users[2],
      title: '!התקווה 6 - \\"מפה לשם\\',
      publishDate: DateTime.parse("2020-12-10"),
      duration: Duration(seconds: 63),
      views: 17432,
      likes: 584,
      dislikes: 6,
      id: 'Smw0P4sGWZQ'),
  Video(
      owner: users[2],
      title: "התקווה 6 - לחזור הביתה",
      publishDate: DateTime.parse("2020-08-05"),
      duration: Duration(seconds: 232),
      views: 2554143,
      likes: 9536,
      dislikes: 418,
      id: 'oZ05DVEE1JE'),
  Video(
      owner: users[3],
      title: "מושיקו מור - פטרון (prod. By offir.c \\u0026 mash) | Moshiko Mor",
      publishDate: DateTime.parse("2021-03-25"),
      duration: Duration(seconds: 145),
      views: 1565444,
      likes: 7936,
      dislikes: 471,
      id: 'oLaCJoVg8ss'),
  Video(
      owner: users[3],
      title: "מושיקו מור – אני כבר מאושר  By.Tamir Zur \\u0026 Osher Cohen))",
      publishDate: DateTime.parse("2020-12-17"),
      duration: Duration(seconds: 189),
      views: 4423907,
      likes: 15397,
      dislikes: 890,
      id: 'T0wXOx9BTBQ'),
  Video(
      owner: users[3],
      title: "מושיקו מור - יפה שלי",
      publishDate: DateTime.parse("2020-10-07"),
      duration: Duration(seconds: 238),
      views: 7439923,
      likes: 16260,
      dislikes: 1034,
      id: 'U1v88lz62u0'),
  Video(
      owner: users[3],
      title: "מושיקו מור – אל תשברי לי (prod. By offir.c)",
      publishDate: DateTime.parse("2020-08-27"),
      duration: Duration(seconds: 203),
      views: 3180810,
      likes: 15666,
      dislikes: 811,
      id: 'czL4RY-Mb9w')
];
