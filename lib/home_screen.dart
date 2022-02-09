// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_ui/common_widgets.dart';
import 'package:furniture_ui/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: Column(
          children: [
            CommonWidgets.MyAppBar(),
            CommonWidgets.headerCards(),
            SizedBox(height: 10),
            title(
                context: context,
                titleText: 'Modern',
                subtitleText: '. Good quality item'),
            listOfCards(),
            SizedBox(height: 20),
            title(
                context: context,
                titleText: "Popular",
                subtitleText: ".  In recent month"),
            SizedBox(height: 20),
            endingCard(),
          ],
        ),
      ),
    );
  }

  Expanded listOfCards() {
    return Expanded(
      child: Stack(
        children: [
          ScrollConfiguration(
            behavior: ScrollBehavior().copyWith(overscroll: false),
            child: ListView.builder(
              itemCount: Utils.listOfCards.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  // fit: index == 0 ? StackFit.passthrough : StackFit.loose,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(20),
                      // constraints: BoxConstraints(maxHeight: 50),
                      width: index == 0 ? 220 : 160,
                      height: index == 0 ? 230 : 180,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            Utils.listOfCards[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: index == 0 ? 8 : 60,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.lightGrey,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 5,
                                color: AppColors.black.withOpacity(0.3)),
                          ],
                        ),
                        height: index == 0 ? 120 : 100,
                        width: index == 0 ? 170 : 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              'Landscape',
                              style: TextStyle(
                                  fontSize: index == 0 ? 20 : 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              'Maatter made',
                              style: TextStyle(
                                  color: AppColors.grey, fontSize: 12),
                            ),
                            Spacer(flex: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '196',
                                  style: TextStyle(
                                      fontSize: index == 0 ? 30 : 25,
                                      color: AppColors.darkSkyBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'USD',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColors.darkSkyBlue),
                                ),
                              ],
                            ),
                            Spacer()
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: index == 0 ? 20 : 80,
                      right: index == 0 ? 40 : 20,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.darkSkyBlue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.lightGrey,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            bottom: 10,
            right: 43,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 3.5,
                  backgroundColor: AppColors.grey,
                ),
                SizedBox(width: 5),
                Container(
                  width: 25,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColors.darkSkyBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 3.5,
                  backgroundColor: AppColors.grey,
                ),
                SizedBox(width: 5),
                CircleAvatar(
                  radius: 3.5,
                  backgroundColor: AppColors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  endingCard() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    'assets/img3.jpeg',
                    height: 100,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aerial Pendant',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Our Lighting colletion is sure\nto add the desired style to',
                        style: TextStyle(fontSize: 15, color: AppColors.grey),
                        overflow: TextOverflow.clip,
                        softWrap: true,
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '196',
                            style: TextStyle(
                                fontSize: 20,
                                color: AppColors.darkSkyBlue,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'USD',
                            style: TextStyle(
                                fontSize: 16, color: AppColors.darkSkyBlue),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 8,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.darkSkyBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.arrow_forward,
              color: AppColors.lightGrey,
            ),
          ),
        ),
      ],
    );
  }

  title({context, width, titleText, subtitleText}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            '$titleText ',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            '$subtitleText',
            style:
                TextStyle(color: AppColors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
