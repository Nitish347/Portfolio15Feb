import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget card(String title) {
  return Container(
    margin: EdgeInsets.only(bottom: 0.025.sh),
    height: 0.15.sh,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(0.02.sh)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 0.3.sw,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0.02.sh), bottomLeft: Radius.circular(0.02.sh)),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/cup1.jpg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(0.036.sw),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 0.02.sh, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 0.4.sw,
                            child: Text(
                              "BAHASA SUNDA",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 0.016.sh, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 0.005.sh,
                          ),
                          Container(
                            width: 0.4.sw,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Oleh",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 0.015.sh,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 0.005.sw,
                                ),
                                Expanded(
                                  child: Text(
                                    "Al-Baiqi Samaan",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 0.015.sh,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.orange, Colors.amber]),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0.05.sw, vertical: 0.01.sh),
                          child: Text(
                            "A",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 0.02.sh),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}
