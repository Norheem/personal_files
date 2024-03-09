import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';
import 'package:personal_files/core/utils/util.dart';

class SharedFolderContainer extends StatelessWidget {
  const SharedFolderContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // Adjusting the order of items to make "Vacation photos" appear as the second container
    List<Map<String, dynamic>> adjustedSharedFolderContainer = [
      sharedFolderContainer[0], // First container
      sharedFolderContainer[3], // Second container
      sharedFolderContainer[1], // Third container
      sharedFolderContainer[2], // Fourth container
    ];

    // Splitting the adjusted list into two separate lists based on the presence of 'border_color'
    List<Map<String, dynamic>> itemsWithBorderColor = [];
    List<Map<String, dynamic>> itemsWithoutBorderColor = [];

    for (var e in adjustedSharedFolderContainer) {
      if (e.containsKey('border_color')) {
        itemsWithBorderColor.add(e);
      } else {
        itemsWithoutBorderColor.add(e);
      }
    }

    return Container(
      height: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.addFileContainerBg,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // First, display items without border color
            ...itemsWithoutBorderColor.map((e) {
              return Column(
                children: [
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: e['color'],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e['name'],
                            style: TextStyle(
                              color: AppColor.drawerBG,
                              fontWeight: FontWeight.bold,
                              fontSize: size.width <= 900 ? 15 : 20,
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                if (e['id'] == 0)
                                  Positioned(
                                    left: 150,
                                    bottom: 7,
                                    child: ClipOval(
                                      child: Image.asset(
                                        e['image_2'] ?? '',
                                        width: 35,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  right: 10,
                                  bottom: 7,
                                  child: ClipOval(
                                    child: Image.asset(
                                      e['image_1'],
                                      width: 35,
                                      height: 35,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            }).toList(),

            // Then, display items with border color
            ...itemsWithBorderColor.map((e) {
              return Column(
                children: [
                  const SizedBox(height: 10),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: e['border_color'],
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            e['icon'],
                            color: e['border_color'],
                          ),
                          Text(
                            e['middle_name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: e['border_color'],
                              fontSize: size.width <= 900 ? 11 : 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
