//Carousal Slider For You
import 'dart:ffi';

class FeedItem {
  final String title;
  final String description;
  final String imagePath;

  FeedItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
final List<FeedItem> feedItems = [
  FeedItem(
    title: 'Trending',
    description: 'Benefits of Reading Holy Quran  in Hosjid',
    imagePath: 'assets/images/carousal/frameone.png', // Replace with your actual asset path
  ),
  FeedItem(
    title: 'Trending',
    description: 'How many Hajjis Visit the Mr to Perform r to Perform Hajj?',
    imagePath: 'assets/images/carousal/frametwo.png', // Replace with your actual asset path
  ),
  FeedItem(
    title: 'Trending',
    description: 'Reading enhances your imagination.Rea',
    imagePath: 'assets/images/carousal/framethree.png', // Replace with your actual asset path
  ),
  FeedItem(
    title: 'Trending',
    description: 'Learning new thingnd exciting!be funxciting!be  and excibe fun',
    imagePath: 'assets/images/carousal/frametwo.png', // Replace with your actual asset path
  ),
];

// Post One Model For You
class PostModel {
  String mainHeadingText;
  String detailText;
  String minutesAgoText;
  int likesText;
  int viewsText;
  int commentsText;
  int shareText;
  String image; // New field for the image URL or path

  PostModel({
    required this.mainHeadingText,
    required this.detailText,
    required this.minutesAgoText,
    required this.likesText,
    required this.viewsText,
    required this.commentsText,
    required this.shareText,
    required this.image, // Include image in the constructor
  });
}
final List<PostModel> postList = [
  PostModel(
      mainHeadingText: 'When will moon of Ramadan 2025 appear in Pakistan?',
      detailText: 'The official start of Ramadan in Pakistan will depend on t of Ramadan in Pakistan will depend on the Ruet-e-Hilal Committee',
      minutesAgoText: '52 minutes ago',
      likesText: 247,
      viewsText: 500,
      commentsText: 85,
      shareText: 32,
      image: 'assets/images/foryou/image.png'
  ), // Added image path
  PostModel(
      mainHeadingText: 'Eid ul-Adha 2024: Expected Date and Observance',
      detailText: 'Eid ul-Adha, one of the holiest events in the Islamic calendar, is expected to fall in June 2024.',
      minutesAgoText: '1 hour ago',
      likesText: 320,
      viewsText: 780,
      commentsText: 92,
      shareText: 40,
      image: 'assets/images/foryou/image.png'
  ), // Added image path
  PostModel(
      mainHeadingText: 'Hajj 2024: Guidelines for Pilgrims from Pakistan',
      detailText: 'Hajj 2024 guidelines released for Pakistani pilgrims, covering vaccination and travel procedures.',
      minutesAgoText: '3 hours ago',
      likesText: 450,
      viewsText: 1200,
      commentsText: 125,
      shareText: 58,
      image: 'assets/images/foryou/image.png'
  ), // Added image path
  PostModel(
      mainHeadingText: 'New Government Policies on Zakat for 2024',
      detailText: 'The government of Pakistan has announced new policies for Zakat distribution for the year 2024.',
      minutesAgoText: '30 minutes ago',
      likesText: 190,
      viewsText: 420,
      commentsText: 65,
      shareText: 22,
      image: 'assets/images/foryou/image.png'
  ), // Added image path
  PostModel(
      mainHeadingText: 'The Importance of Fasting During Ramadan',
      detailText: 'Fasting during Ramadan holds great significance in Islam and is observed by millions of Muslims worldwide.',
      minutesAgoText: '10 minutes ago',
      likesText: 300,
      viewsText: 600,
      commentsText: 110,
      shareText: 50,
      image: 'assets/images/foryou/image.png'
  ), // Added image path
];

// Post Two Model For You  Index 0
class PostModelTwo {
  String title;
  String description;
  String timePosted;
  dynamic likeCount;
  dynamic viewCount;
  dynamic commentCount;
  dynamic shareCount;
  String imagetwo;

  PostModelTwo({
    required this.title,
    required this.description,
    required this.timePosted,
    required this.likeCount,
    required this.viewCount,
    required this.commentCount,
    required this.shareCount,
    required this.imagetwo,
  });
}
final List<PostModelTwo> postListTwo = [
  PostModelTwo(
    title: 'What are the Benifits of Reading Holy Quran in House and Masjid',
    description: 'Islamic',
    timePosted: '2 hours ago',
    likeCount: '150',
    viewCount: '400',
    commentCount: '20',
    shareCount: '10',
    imagetwo: 'assets/images/foryou/maskgroup.png',
  ),
  PostModelTwo(
    title: 'How to Improve Your Daily Prayer Routine',
    description: 'Religious',
    timePosted: '4 hours ago',
    likeCount: '100',
    viewCount: '250',
    commentCount: '15',
    shareCount: '5',
    imagetwo: 'assets/images/foryou/maskgroup.png',
  ),
  PostModelTwo(
    title: 'The Impact of Charity on Society',
    description: 'Social',
    timePosted: '1 day ago',
    likeCount: '200',
    viewCount: '500',
    commentCount: '40',
    shareCount: '30',
    imagetwo: 'assets/images/foryou/maskgroup.png',
  ),
  PostModelTwo(
    title: 'Benefits of Fasting in Ramadan',
    description: 'Health',
    timePosted: '3 days ago',
    likeCount: '300',
    viewCount: '600',
    commentCount: '50',
    shareCount: '25',
    imagetwo: 'assets/images/foryou/maskgroup.png',
  ),
  PostModelTwo(
    title: 'Significance of Hajj in Islam',
    description: 'Islamic',
    timePosted: '5 days ago',
    likeCount: '400',
    viewCount: '800',
    commentCount: '60',
    shareCount: '40',
    imagetwo: 'assets/images/foryou/maskgroup.png',
  ),
];

//Videos Index 1
class ModelVideos {
  final String imagePath;
  final String maintext;
  final String timeAgo;
  final int likeCount;
  final int viewCount;
  final int commentCount;
  final int shareCount;

  ModelVideos({
    required this.imagePath,
    required this.maintext,
    required this.timeAgo,
    required this.likeCount,
    required this.viewCount,
    required this.commentCount,
    required this.shareCount,
  });
}
List<ModelVideos> videosdata = [
  ModelVideos(imagePath: 'assets/images/videos/video1.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', timeAgo: '52 minutes ago', likeCount: 50, viewCount: 200, commentCount: 20, shareCount: 10),
  ModelVideos(imagePath: 'assets/images/videos/video2.png', maintext: 'When will moon of Ramzdan 2025 appear in the Inida?', timeAgo: '50 minutes ago', likeCount: 100, viewCount: 500, commentCount: 70, shareCount: 30),
  ModelVideos(imagePath: 'assets/images/videos/video3.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', timeAgo: '52 minutes ago', likeCount: 267, viewCount: 1100, commentCount: 120, shareCount: 70),
  ModelVideos(imagePath: 'assets/images/videos/video4.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', timeAgo: '52 minutes ago', likeCount: 20, viewCount: 259, commentCount: 3, shareCount: 50),
  ModelVideos(imagePath: 'assets/images/videos/video2.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', timeAgo: '52 minutes ago', likeCount: 800, viewCount: 5000, commentCount: 267, shareCount: 150),
];

//Ramzan Index 2
class ModelRamzan {
  final String imagePath;
  final String maintext;
  String detailText;
  final String timeAgo;
  final int likeCount;
  final int viewCount;
  final int commentCount;
  final int shareCount;

  ModelRamzan({
    required this.imagePath,
    required this.maintext,
    required this.detailText,
    required this.timeAgo,
    required this.likeCount,
    required this.viewCount,
    required this.commentCount,
    required this.shareCount,
  });
}
List<ModelRamzan> ramzandata = [
  ModelRamzan(imagePath: 'assets/images/ramadan/ramzdan1.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', detailText:  'The offical start of Ramadan in Pakistan will depend on the the Ruet-e-Hilal Committe`s, The offical start of Ramadan in Pakistan will depend on the the Ruet-e-Hilal Committe`s', timeAgo: '52 minutes ago', likeCount: 80, viewCount: 150, commentCount: 10, shareCount: 5),
  ModelRamzan(imagePath: 'assets/images/ramadan/ramzdan2.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', detailText: 'The offical start of Ramadan in Pakistan will depend on of Ramadan in Pakistan will depend on  the the Ruet-e-Hilal Committe`s', timeAgo: '52 minutes ago', likeCount: 60, viewCount: 200, commentCount: 20, shareCount: 5),
  ModelRamzan(imagePath: 'assets/images/ramadan/ramzdan3.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', detailText: 'The offical start of Ramadan in Pakistan will depend on the the  start of Ramadan in Pakistan will depend  start of Ramadan in Pakistan will depend Ruet-e-Hilal Committe`s', timeAgo: '52 minutes ago', likeCount: 50, viewCount: 250, commentCount: 800, shareCount: 100),
  ModelRamzan(imagePath: 'assets/images/ramadan/ramzdan4.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', detailText: 'The offical start of Ramadan in Pakistan will depend on thoffical start of Ramadan in Pakistan will depend on offical start of Ramadan in Pakistan will depend on e the Ruet-e-Hilal Committe`s', timeAgo: '52 minutes ago', likeCount: 80, viewCount: 500, commentCount: 20, shareCount: 15),
  ModelRamzan(imagePath: 'assets/images/ramadan/ramzdan2.png', maintext: 'When will moon of Ramzdan 2025 appear in the Pakistan?', detailText: 'The offical start of Ramadan in Pakistan will depend on the t of Ramadan in Pakistan will depend on t of Ramadan in Pakistan will depend on the Ruet-e-Hilal Committe`s', timeAgo: '52 minutes ago', likeCount: 50, viewCount: 300, commentCount: 50, shareCount: 25),
];


