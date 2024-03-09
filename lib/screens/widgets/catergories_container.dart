import 'package:flutter/material.dart';
import 'package:personal_files/core/utils/util.dart';

class CategoriesContainer extends StatelessWidget {
  const CategoriesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: catergoriesContainer.map((e) {
          return Row(
            children: [
              Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  color: e['color'],
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
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 13,
                            child: Icon(
                              e['icon'],
                              color: e['color'],
                              size: 15,
                            ),
                          ),
                          Icon(
                            e['second_icon'],
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        e['name'],
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width <= 900 ? 15 : 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        e['file_number'],
                        style: TextStyle(
                          color: const Color.fromARGB(255, 198, 198, 198),
                          fontSize: size.width <= 900 ? 11 : 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          );
        }).toList(),
      ),
    );
  }
}
