// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:furniture_ui/utils.dart';
import 'dart:math' as math;

class CommonWidgets {
  static MyAppBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Furniture',
            style: TextStyle(
                color: AppColors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 21),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: AppColors.black,
                    )),
              ),
              Positioned(
                top: 23,
                right: 15,
                child: CircleAvatar(
                  backgroundColor: AppColors.darkSkyBlue,
                  radius: 8,
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  static headerCards() {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Utils.iconList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Transform.rotate(
              angle: -math.pi / 1.34,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: index == 0
                      ? [
                          BoxShadow(
                            offset: Offset(-8, -8),
                            blurRadius: 5,
                            spreadRadius: 2,
                            color: AppColors.darkSkyBlue.withOpacity(0.2),
                          )
                        ]
                      : null,
                  color:
                      index == 0 ? AppColors.darkSkyBlue : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(7),
                ),
                // height: 100,
                width: 60,
                child: Transform.rotate(
                  angle: math.pi / 1.34,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Icon(
                      Utils.iconList[index],
                      color: index == 0
                          ? AppColors.lightGrey
                          : AppColors.black.withOpacity(0.3),
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
