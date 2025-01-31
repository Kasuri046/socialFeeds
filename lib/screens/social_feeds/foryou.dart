import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';
import 'package:socialfeeds/models/social_feeds_model.dart';
import 'package:socialfeeds/path_file.dart';
import '../../custom_widgets/colors.dart';
import '../../custom_widgets/custom_text.dart';

class ForYou extends StatefulWidget {
  final SocialFeedsController controller;
  const ForYou({Key? key, required this.controller,}) : super(key: key);

  @override
  State<ForYou> createState() => _ForYouState();
}

class _ForYouState extends State<ForYou> {
  @override
  Widget build (BuildContext context) {
    return
      Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
              return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(feedItems[itemIndex].imagePath),
                      // Add your image asset here
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: context.screenHeight > 1200 ? 30 : 20, top: context.screenHeight > 1200 ? 25 : 15),
                        child: Container(
                          height: context.screenHeight > 1200 ? 45 : 27,
                          width:context.screenHeight > 1200 ? 120 : 80,
                          decoration: BoxDecoration(
                            color: AppColors.color4,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: CustomText(
                              text: feedItems[itemIndex].title,
                              fontSize:context.screenHeight > 1200 ? 20 : 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight > 1200 ? 280 : 90,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: context.screenHeight > 1200 ? 30 : 20,),
                        child: CustomText(
                          text: feedItems[itemIndex].description,
                          fontSize: context.screenHeight > 1200 ? 25 : 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.color4,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: context.screenHeight > 1200 ? 450 : 200,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              initialPage: 0,
              viewportFraction: 0.9,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                widget.controller.updateIndex(index); // Update index through controller
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => Row (
            mainAxisAlignment: MainAxisAlignment.center, // Center the dots
            children: List.generate(4, (indexDots) {
              return Container(
                height: 8,
                width: widget.controller.currentIndex.value == indexDots ? 25 : 8,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                // Add some space between dots
                decoration: BoxDecoration(
                  color: widget.controller.currentIndex.value == indexDots
                      ? AppColors.color3
                      : const Color.fromRGBO(20, 106, 31, 0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }),
          )),
          Padding(
            padding: EdgeInsets.only(
              left: context.screenWidth * .04,
              right: context.screenWidth * .04,
              bottom: 10,
              top: 10
            ),
            child: Row(
              children: [
                Container(
                  height: context.screenHeight > 1200 ? 40 : 30,
                  width: context.screenHeight > 1200 ? 8 : 6,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 124, 51),
                      borderRadius: BorderRadius.circular(30)),
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomText(
                    text: 'Latest Article',
                    fontSize: context.screenHeight > 1200 ? 30 : 22,
                    fontWeight: context.screenHeight > 1200 ? FontWeight.w700 : FontWeight.w600,
                    color: Colors.black)
              ],
            ),
          ),
          ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.screenWidth * .04,
                        right: context.screenWidth * .04,
                        bottom: 10),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Image
                          Container(
                            height: context.screenHeight > 1200 ? 350 : 200,
                            width: context.screenWidth,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(postList[index].image),
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          SizedBox(
                              height: 10
                          ),
                          //Row
                          Container(
                            height: context.screenHeight > 1200 ? 50 : 45,
                            width: context.screenWidth,
                            child: Row(
                              children: [
                                Container(
                                    padding:  EdgeInsets.only(top: context.screenHeight > 1200 ? 10 : 0),
                                    height: context.screenHeight > 1200 ? 70 : 50,
                                    width: context.screenHeight > 1200 ? 550 : context.screenWidth * 0.75,
                                    child: CustomText(
                                        text: postList[index].mainHeadingText,
                                        fontSize: context.screenHeight > 1200 ? 22 : 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black)),
                                Spacer(),
                                Container(
                                    width: context.screenWidth * 0.06,
                                    height: 20,
                                    child: const ImageIcon(
                                      AssetImage('assets/images/ector.png'),
                                      color: AppColors.color5,
                                    ))
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Read More Text
                          ReadMoreText(
                            postList[index].detailText,
                            trimLength: 87,
                            trimMode: TrimMode.Length,
                            colorClickableText: Colors.black,
                            trimCollapsedText: 'more',
                            trimExpandedText: ' ..less',
                            style: TextStyle(
                                fontSize: context.screenHeight > 1200 ? 20 : 15
                            ),
                            moreStyle:  TextStyle(
                              fontSize: context.screenHeight > 1200 ? 20 : 16,
                              fontWeight: FontWeight.bold,
                            ),
                            lessStyle: TextStyle(
                              fontSize: context.screenHeight > 1200 ? 20 : 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: context.screenHeight > 1200 ?  10 : 5,
                          ),
                          //Minutes Row
                          Container(
                            height: context.screenHeight > 1200 ? 45 : 30,
                            width: 200,
                            child: Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: context.screenHeight > 1200 ? 40 : 22, color: AppColors.color6),
                                const SizedBox(
                                  width: 5,
                                ),
                                CustomText(
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w700,
                                  text: postList[index].minutesAgoText,
                                  color: AppColors.color6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          //Likes Views Row
                          Container(
                            height: context.screenHeight > 1200 ? 45 : 30,
                            width: context.screenWidth,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    widget.controller.onTap(index);
                                  },
                                  child: Obx(() => widget.controller.isChecked[index] == false
                                      ? Image.asset(
                                    'assets/icons/like.png',
                                    height: context.height > 1200 ? 30 : 22,
                                    width: context.height > 1200 ? 30 : 22,
                                  )
                                      : Image.asset(
                                    'assets/icons/likedicon.png',
                                    height: context.height > 1200 ? 35 : 22,
                                    width: context.height > 1200 ? 35 : 22,
                                  )),
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postList[index].likesText,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/icons/eye.png',
                                  height: context.height > 1200 ? 35 : 22,
                                  width: context.height > 1200 ? 35 : 22,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postList[index].viewsText,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: context.screenHeight > 1200 ? 20 : 10,
                                ),
                                Image.asset(
                                  'assets/icons/comment.png',
                                  height: context.height > 1200 ? 30 : 18,
                                  width: context.height > 1200 ? 30 : 18,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postList[index].commentsText,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: context.screenHeight > 1200 ? 20 : 10,
                                ),
                                Image.asset(
                                  'assets/icons/share.png',
                                  height: context.height > 1200 ? 35 : 22,
                                  width: context.height > 1200 ? 35 : 22,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postList[index].shareText,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.screenWidth * .04,
                        right: context.screenWidth * .04, top: 10, bottom: 10),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: context.screenHeight > 1200 ? 200 : 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height : context.screenHeight > 1200 ? 150 : 90,
                                      width : context .screenHeight > 1200 ? 280 : 190,
                                      child: CustomText(
                                          text: postListTwo[index].title,
                                          fontSize:  context.screenHeight > 1200 ? 24 : 20,
                                          fontWeight: context.screenHeight >1200 ? FontWeight.w700 : FontWeight.w600,
                                          color: Colors.black
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: context.screenHeight == 640 ? 30 : context.screenHeight > 1200 ? 45 : 35,
                                      width: context.screenHeight > 1200 ? 120 : 80,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: AppColors.color2),
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Center(
                                          child: CustomText(
                                              text: postListTwo[index].description,
                                              fontSize: context.screenHeight > 1200 ? 20 : 16,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.color2)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  height: context.screenHeight > 1200 ? 200 : 140,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        postListTwo[index].imagetwo,
                                        height: context.screenHeight == 640 ? 120 : context.screenHeight > 1200 ? 200 : 130,
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: context.screenHeight == 732 ? 12 : 12,
                          ),
                          Container(
                            height: context.screenHeight > 1200 ? 45 : 30,
                            child: Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: context.screenHeight > 1200 ? 40 : 22, color: AppColors.color6),
                                const SizedBox(
                                  width: 5,
                                ),
                                CustomText(
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w700,
                                  text: postListTwo[index].timePosted,
                                  color: AppColors.color6,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: context.screenHeight > 1200 ? 45 : 30,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    widget.controller.onTapSecond(index);
                                  },
                                  child: Obx(() => widget.controller.isCheckedSecondList[index] == false
                                      ? Image.asset(
                                    'assets/icons/like.png',
                                    height: context.height > 1200 ? 30 : 22,
                                    width: context.height > 1200 ? 30 : 22,
                                  )
                                      : Image.asset(
                                    'assets/icons/likedicon.png',
                                    height: context.height > 1200 ? 35 : 22,
                                    width: context.height > 1200 ? 35 : 22,
                                  )),
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postListTwo[index].likeCount,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/icons/eye.png',
                                  height: context.height > 1200 ? 35 : 22,
                                  width: context.height > 1200 ? 35 : 22,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postListTwo[index].viewCount,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: context.screenHeight > 1200 ? 20 : 10,
                                ),
                                Image.asset(
                                  'assets/icons/comment.png',
                                  height: context.height > 1200 ? 30 : 18,
                                  width: context.height > 1200 ? 30 : 18,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postListTwo[index].commentCount,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                                SizedBox(
                                  width: context.screenHeight > 1200 ? 20 : 10,
                                ),
                                Image.asset(
                                  'assets/icons/share.png',
                                  height: context.height > 1200 ? 35 : 22,
                                  width: context.height > 1200 ? 35 : 22,
                                ),
                                SizedBox(width: 5,),
                                CustomText(
                                  text: postListTwo[index].shareCount,
                                  color: AppColors.color6,
                                  fontSize: context.screenHeight > 1200 ? 20 : 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            );
          },
              ),
        ],
      );
  }
}
