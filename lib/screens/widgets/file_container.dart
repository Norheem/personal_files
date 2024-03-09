import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';
import 'package:personal_files/core/utils/util.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: sharedContainer.map((e) {
          if (e.containsKey('name')) {
            return Row(
              children: [
                Container(
                  width: 120,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              e['icon'],
                              color: e['icon_color'],
                              size: 20,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          e['name'],
                          style: TextStyle(
                            color: AppColor.drawerBG,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width <= 900 ? 15 : 20,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          e['file_text'],
                          style: TextStyle(
                            color: AppColor.drawerBG,
                            fontSize: size.width <= 900 ? 11 : 15,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 70,
                                height: 0.5,
                                color: AppColor.drawerBG,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            );
          } else {
            return Container(
              width: 120,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  e['icon'],
                  color: e['icon_color'],
                ),
              ),
            );
          }
        }).toList(),
      ),
    );
  }
}
