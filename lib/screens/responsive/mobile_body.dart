import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';
import 'package:personal_files/core/theme/app_theme.dart';
import 'package:personal_files/screens/widgets/catergories_container.dart';
import 'package:personal_files/screens/widgets/file_container.dart';
import 'package:personal_files/screens/widgets/recent_files.dart';
import 'package:personal_files/screens/widgets/shared_folder_container.dart';
import 'package:personal_files/screens/widgets/sidebar.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.lightTheme.scaffoldBackgroundColor,
      ),
      drawer: Drawer(
          width: size.width * 0.7,
          // Set the background color for the entire drawer
          child: const Sizebar(isMobile: true)),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              searchBar(),
              const SizedBox(
                height: 10,
              ),
              categoriesText(),
              const SizedBox(
                height: 10,
              ),
              const CategoriesContainer(),
              const SizedBox(
                height: 10,
              ),
              filesText(),
              const SizedBox(
                height: 10,
              ),
              const FileContainer(),
              const SizedBox(
                height: 10,
              ),
              recentFilesText(),
              const SizedBox(
                height: 10,
              ),
              const RecentFileClass(),
              const SizedBox(
                height: 10,
              ),
              addNewFile(),
              const SizedBox(
                height: 10,
              ),
              storageContainer(),
              const SizedBox(
                height: 10,
              ),
              const SharedFolderContainer(),
            ],
          ),
        ),
      )),
    );
  }

  storageContainer() {
    return Container(
      width: double.infinity,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.addFileContainerBg,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your storage',
                  style: TextStyle(
                    color: AppColor.drawerBG,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '25% left',
                  style: TextStyle(
                    color: AppColor.cardTwo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '75 GB of 100 GB are used',
                  style: TextStyle(
                    color: AppColor.drawerBG,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppColor.cardFour,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      bottom: 10,
                    ),
                    child: Container(
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppColor.storageLeft,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  addNewFile() {
    return Container(
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        color: AppColor.addFileContainerBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.file_upload,
              color: AppColor.cardFour,
              size: 40,
            ),
          ),
          Center(
            child: Text(
              'Add new files',
              style: TextStyle(
                color: AppColor.drawerBG,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  recentFilesText() {
    return const Row(
      children: [
        Text(
          'Recent files',
          style: TextStyle(
            color: AppColor.categoryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  filesText() {
    return const Row(
      children: [
        Text(
          'Files',
          style: TextStyle(
            color: AppColor.categoryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  searchBar() {
    return Column(
      children: [
        Center(
          child: Container(
            width: 390,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  categoriesText() {
    return const Row(
      children: [
        Text(
          'Catergories',
          style: TextStyle(
            color: AppColor.categoryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
