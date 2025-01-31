import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialfeeds/path_file.dart';
import '../../custom_widgets/colors.dart';
import '../../custom_widgets/custom_text.dart';
import 'package:readmore/readmore.dart';
import '../../models/social_feeds_model.dart';

class RamzanList extends StatelessWidget {
  final SocialFeedsController controller;
  const RamzanList({Key? key, required this.controller,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: context.screenWidth * .04,
              right: context.screenWidth * .04,
            top: 10,
            bottom: 10
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
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
                  text: 'Ramadan',
                  fontSize: context.screenHeight > 1200 ? 30 : 22,
                  fontWeight: context.screenHeight > 1200 ? FontWeight.w700 : FontWeight.w600,
                  color: Colors.black)
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ramzandata.length,
          itemBuilder: (context, index) {
            return Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: context.screenWidth * .04,
                        right: context.screenWidth * .04,
                        top: context.screenWidth * .01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: context.screenHeight > 1200 ? 350 : 200,
                          width: context.screenWidth,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(ramzandata[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: context.screenHeight > 1200 ? 50 : 45,
                          width: context.screenWidth,
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: context.screenHeight > 1200 ? 10 : 0),
                                height: context.screenHeight > 1200 ? 70 : 50,
                                width: context.screenHeight > 1200 ? 550 : context.screenWidth * 0.75,
                                child: CustomText(
                                    text: ramzandata[index].maintext,
                                    fontSize: context.screenHeight > 1200 ? 22 : 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              const Spacer(),
                              Container(
                                width: context.screenWidth * 0.06,
                                height: 20,
                                child: const ImageIcon(
                                  AssetImage('assets/images/ector.png'),
                                  color: AppColors.color5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        ReadMoreText(
                          ramzandata[index].detailText,
                          trimLength: 87,
                          trimMode: TrimMode.Length,
                          colorClickableText: Colors.black,
                          trimCollapsedText: 'more',
                          trimExpandedText: ' ..less',
                          style: TextStyle(
                              fontSize: context.screenHeight > 1200 ? 20 : 15),
                          moreStyle: TextStyle(
                            fontSize: context.screenHeight > 1200 ? 20 : 16,
                            fontWeight: FontWeight.bold,
                          ),
                          lessStyle: TextStyle(
                            fontSize: context.screenHeight > 1200 ? 20 : 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: context.screenHeight > 1200 ? 45 : 30,
                          width: 200,
                          child: Row(
                            children: [
                              Icon(Icons.access_time,
                                  size: context.screenHeight > 1200 ? 40 : 22,
                                  color: AppColors.color6),
                              const SizedBox(width: 5),
                              CustomText(
                                fontSize: context.screenHeight > 1200 ? 20 : 14,
                                fontWeight: FontWeight.w700,
                                text: ramzandata[index].timeAgo,
                                color: AppColors.color6,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: context.screenHeight * .01),
                        Container(
                          height: context.screenHeight > 1200 ? 45 : 30,
                          width: context.screenWidth,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.onTapRamadanPage(index);
                                },
                                child: Obx(() => controller.isCheckedRamzanList[index] == false
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
                              const SizedBox(width: 5),
                              CustomText(
                                text: ramzandata[index].likeCount,
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
                              const SizedBox(width: 5),
                              CustomText(
                                text: ramzandata[index].viewCount,
                                color: AppColors.color6,
                                fontSize: context.screenHeight > 1200 ? 20 : 14,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(width: context.screenHeight > 1200 ? 20 : 10),
                              Image.asset(
                                'assets/icons/comment.png',
                                height: context.height > 1200 ? 30 : 18,
                                width: context.height > 1200 ? 30 : 18,
                              ),
                              const SizedBox(width: 5),
                              CustomText(
                                text: ramzandata[index].commentCount,
                                color: AppColors.color6,
                                fontSize: context.screenHeight > 1200 ? 20 : 14,
                                fontWeight: FontWeight.w600,
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                'assets/icons/share.png',
                                height: context.height > 1200 ? 35 : 22,
                                width: context.height > 1200 ? 35 : 22,
                              ),
                              const SizedBox(width: 5),
                              CustomText(
                                text: ramzandata[index].shareCount,
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
                  const Divider(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
