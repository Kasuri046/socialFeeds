// Controller Class
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socialfeeds/models/social_feeds_model.dart';

class SocialFeedsController extends GetxController {


  //For You
  RxList<bool> isChecked = List<bool>.filled(videosdata.length, false).obs;
  RxList<bool> isCheckedSecondList = List<bool>.filled(postListTwo.length, false).obs;
  //Videos
  RxList<bool> isCheckedVideosList = List<bool>.filled(videosdata.length, false).obs;
  //Ramzan
  RxList<bool> isCheckedRamzanList = List<bool>.filled(ramzandata.length, false).obs;

  //For You
  void onTap(int index) {
    isChecked[index] = !isChecked[index];
  }
  void onTapSecond(int index) {
    isCheckedSecondList[index] = !isCheckedSecondList[index];
  }

  //Videos
  void onTapVideoPage(int index) {
    isCheckedVideosList[index] = !isCheckedVideosList[index];
  }

  //Ramzan
  void onTapRamadanPage(int index) {
    isCheckedRamzanList[index] = !isCheckedRamzanList[index];
  }


  //Single Child Scroll View
  final List<String> categories = [
    'For You',
    'Videos',
    'Ramzan',
    'Religious',
    'Latest',
    'Popular',
    'Favorites',
  ];

  //SingleChildScrollView
  RxInt selectedIndex = 0.obs;
  void socialFeedsOnTap(int index) {
    selectedIndex.value = index;
  }

  //Carousal
  var currentIndex = 0.obs;
  void updateIndex(int index) {
    currentIndex.value = index;
  }

  //Video Like Code
  RxBool isFavorite = false.obs;

  void loadFavorite(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isFavorite.value = prefs.getBool('favorite') ?? false;
  }

  void toggleFavorite(int index) async {
    isFavorite.value = !isFavorite.value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('favorite', isFavorite.value);
  }

}

