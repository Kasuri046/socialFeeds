import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialfeeds/custom_widgets/colors.dart';
import 'package:socialfeeds/models/social_feeds_model.dart';
import 'package:socialfeeds/path_file.dart';
import 'package:socialfeeds/screens/social_feeds/social_feeds_controller.dart';
import '../../custom_widgets/custom_text.dart';

class VideosPage extends StatefulWidget {
  int index;
  VideosPage({super.key, required this.index});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {

    SocialFeedsController favouriteController = SocialFeedsController();

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: context.screenHeight > 1200 ? 380 : 230,
                width: context.screenWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/videoplay.png'
                        ),
                        fit: BoxFit.cover)),
              ),
              // Positioned(
              //     top: width < 600
              //         ? height * .22
              //         : (width < 805 ? height * .25 : height * .27),
              //     left: 20,
              //     right: 30,
              //     child: Image.asset(
              //       'assets/images/videotime.png',
              //       height: 23,
              //     )),
              Positioned(
                left: context.screenWidth * 0.46,
                top: context.screenHeight > 1200 ? 180 : 100,
                child: Image.asset(
                  'assets/icons/vidoeicon.png',
                  height: 32,
                ),
              ),
              Positioned(
                top: context.screenHeight > 1200 ? 374 : 225,
                child: Center(
                  child: Image.asset(
                    'assets/icons/slider.png',
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: width * .05,right: width * .05,top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: width <= 700 ? 30 : (width <= 1024 ? 50 : 60),
                      width: width < 700
                          ? width * .34
                          : (width < 700 ? width * .42 : width * .2),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(width <= 700 ? 5 : 10),
                          color: const Color.fromARGB(255, 227, 219, 219)),
                      child: Center(
                          child: CustomText(
                            text: 'ENTERTAINMENT',
                            fontSize:
                            width < 700 ? 12 : (width <= 1024 ? 18 : 26),
                            isBold: true,
                          )),
                    ),
                    const Spacer(),
                    Obx(() => GestureDetector(
                      onTap: () {
                        favouriteController.toggleFavorite(widget.index);
                      },
                      child: favouriteController.isFavorite == true
                          ? Icon(
                        Icons.favorite,
                        size: width < 700
                            ? 30
                            : (width <= 1024 ? 55 : 70),
                        color: Colors.red,
                      )
                          : Icon(
                        Icons.favorite_outline,
                        size: width < 700
                            ? 30
                            : (width <= 1024 ? 55 : 70),
                        color: Colors.grey,
                      ),
                    )),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.share,
                      size: width < 700 ? 26 : (width <= 1024 ? 50 : 60),
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                    height: height * .02
                ),
                Row(
                  children: [
                    Icon(
                      Icons.alarm,
                      color: AppColors.color6,
                      size: width < 700 ? 20 : (width <= 1024 ? 50 : 60),
                    ),
                    SizedBox(
                      width: width * .02,
                    ),
                    CustomText(
                      text: videosdata[widget.index].timeAgo,
                      fontSize: width < 700 ? 15 : (width <= 1024 ? 35 : 45),
                      color: AppColors.color6,
                    ),
                    SizedBox(
                      width: width * .08,
                    ),
                    Image.asset(
                      'assets/icons/eye.png',
                      height: width < 700 ? 15 : (width <= 1024 ? 35 : 45),
                    ),
                    SizedBox(
                      width: width * .02,
                    ),
                    CustomText(
                      text: '500',
                      fontSize: width < 700 ? 16 : (width <= 1024 ? 35 : 45),
                      color: AppColors.color6,
                    )
                  ],
                ),
                SizedBox(
                    height: height * .01
                ),
                Container(
                  width: width * .8,
                  height: width < 700
                      ? height * .07
                      : (width <= 1024 ? height * .08 : height * .07),
                  child: CustomText(
                    text: videosdata[widget.index].maintext,
                    fontSize: context.screenHeight >1200 ? 35 : context.screenHeight > 950 ? 22 : 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: width < 700
                      ? 10
                      : (width <= 1024 ? height * .03 : height * .03),
                ),
                Container(
                  height: context.screenHeight > 1200 ? 7 : 3,
                  width:  context.screenHeight > 1200 ? 140 : 90,
                  decoration: BoxDecoration(
                      color: AppColors.color3,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                SizedBox(
                  height: width < 700
                      ? 16
                      : (width <= 1024 ? height * .02 : height * .02),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                      const AssetImage('assets/icons/wallpaper.png'),
                      radius: width < 700 ? 20 : (width <= 1024 ? 40 : 50),
                    ),
                    SizedBox(
                      width: width * .04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Fun Lab',
                          fontSize:
                          width < 700 ? 17 : (width <= 1024 ? 35 : 48),
                          isBold: true,
                        ),
                        CustomText(
                          text: '3 mint read',
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize:
                          width < 700 ? 14 : (width <= 1024 ? 30 : 42),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: width < 700 ? 32 : (width <= 1024 ? 70 : 85),
                      width: width < 700
                          ? width * .3
                          : (width <= 1024 ? width * .25 : width * .25),
                      decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(width < 700 ? 5 : 10),
                          color: const Color.fromARGB(255, 6, 106, 9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icons/wcomment.png',
                            height:
                            width < 700 ? 15 : (width <= 1024 ? 35 : 45),
                          ),
                          SizedBox(
                            width:
                            width < 700 ? 10 : (width < 1024 ? 15 : 20),
                          ),
                          CustomText(
                            fontSize:
                            width < 700 ? 14 : (width <= 1024 ? 25 : 30),
                            text: 'Comments',
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .02,
                ),
                SizedBox(
                  child: CustomText(
                      fontSize: width < 505 ? height * .02 : height * .023,
                      color: Colors.black54,
                      text:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden- Sydney College in Virginia, looked up one of the more obscure Latin words,\nconsectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.'),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}