import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:smart/drawer/naviigation_drawer.dart';
import 'package:smart/utils/theme.dart';
import 'package:smart/view/widgets/text_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          ' Home ',
          style: TextStyle(
            fontSize: 27,
            color: Get.isDarkMode ? pinkClr : white,
          ),
        ),
        centerTitle: true,
        backgroundColor: bottom,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background2.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Center(
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 330,
                  width: 330,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(0),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 18,
                            )),
                        onPressed: () {},
                        child: TextUtils(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          text: 'DIABETIC RETINIATHY',
                          color: bottom,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 18,
                            )),
                        onPressed: () {},
                        child: TextUtils(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          text: 'DOCTORS',
                          color: bottom,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 18,
                            )),
                        onPressed: () {},
                        child: TextUtils(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          text: 'Q&A',
                          color: bottom,
                          underLine: TextDecoration.none,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 18,
                            )),
                        onPressed: () {},
                        child: TextUtils(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          text: 'DETECTION',
                          color: bottom,
                          underLine: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
