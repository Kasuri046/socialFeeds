import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialfeeds/custom_widgets/colors.dart';
import 'package:socialfeeds/screens/social_feeds/foryou.dart';
import 'package:socialfeeds/path_file.dart';
import 'package:socialfeeds/screens/social_feeds/ramzan.dart';
import 'package:socialfeeds/screens/social_feeds/video.dart';
import '../../custom_widgets/custom_text.dart';

extension MediaQueryExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

class SocialFeeds extends GetView<SocialFeedsController> {
  const SocialFeeds({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: 'Social Feeds',
              fontSize: context.screenHeight > 1200 ? 30 : 22,
              fontWeight: FontWeight.w700,
              color: AppColors.color1,
              isBold: true,
            ),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage('assets/images/settingicon.png'),
                    size: context.screenHeight > 1200 ? 50 : 40,
                  ),
                ),
                SizedBox(width: 10,),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: ImageIcon(
                    AssetImage('assets/icons/bellicon.png.png'),
                    size: context.screenHeight > 1200 ? 50 : 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: context.screenHeight > 1200 ? 10 : 0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  cursorColor: AppColors.color2,
                  style: const TextStyle(color: AppColors.color2, fontSize: 16),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.1),
                    hintText: 'Find Interesting Posts',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        Icons.search,
                        color: Color.fromRGBO(131, 131, 131, 1),
                        size: 30, // Icon color
                      ),
                    ),
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(131, 131, 131, 1), // Text color
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none, // No border
                    ),
                    contentPadding:  EdgeInsets.symmetric(vertical: context.screenHeight >1200 ? 25.0 : 15.0),
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight > 1200 ? 20 : 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    controller.categories.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          controller.socialFeedsOnTap(index);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: index == 0 ? 10 : 0, right: 10),
                          height: context.screenHeight > 1200 ? 60 : 45,
                          decoration: BoxDecoration(
                            color: (controller.selectedIndex.value == index)
                                ? AppColors.color3
                                : Colors.black.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(left: context.screenHeight > 1200 ? 30 : 20,right: context.screenHeight > 1200 ? 30 : 20),
                              child: CustomText(
                                text: controller.categories[index],
                                fontSize: context.screenHeight > 1200 ? 20 : 16,
                                fontWeight: FontWeight.w500,
                                color: controller.selectedIndex.value == index
                                    ? AppColors.color4
                                    : AppColors.color2,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              (controller.selectedIndex.value == 0)
                  ? ForYou(controller: controller)
                  : (controller.selectedIndex.value == 1)
                      ? VideosList(controller: controller)
                      : (controller.selectedIndex.value == 2)
                          ? RamzanList(controller: controller,)
                          : (controller.selectedIndex.value == 3)
                              ? Center(child: Text('Working'))
                              : SizedBox.shrink()

            ],
          ),
        );
      }),
    );
  }
}
