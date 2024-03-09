import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';
import 'package:personal_files/core/theme/app_theme.dart';
import 'package:personal_files/screens/widgets/catergories_container.dart';
import 'package:personal_files/screens/widgets/file_container.dart';
import 'package:personal_files/screens/widgets/recent_files.dart';
import 'package:personal_files/screens/widgets/shared_folder_container.dart';
import 'package:personal_files/screens/widgets/sidebar.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    log("width :${size.width}");
    log("height :${size.height}");

    return Scaffold(
      backgroundColor: AppTheme.lightTheme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Sizebar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      searchBar(),
                      const SizedBox(
                        height: 12,
                      ),
                      categoriesText(),
                      const SizedBox(
                        height: 11,
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
                      //
                      if (size.width > 800)
                        const SizedBox()
                      else
                        Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            addNewFileWidget(),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              if (size.width < 800) const SizedBox() else addNewFileWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Padding addNewFileWidget() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: 280,
        // height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            addNewFile(),
            const SizedBox(
              height: 5,
            ),
            storageContainer(),
            const SizedBox(
              height: 10,
            ),
            const SharedFolderContainer()
          ],
        ),
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
            fontSize: 15,
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
            fontSize: 15,
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
            fontSize: 15,
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
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Color.fromARGB(186, 158, 158, 158),
                      size: 20,
                    ),
                    Text(
                      'Search',
                      style:
                          TextStyle(color: Color.fromARGB(255, 135, 179, 241)),
                    )
                  ],
                ),
              )),
        ),
      ],
    );
  }

  storageContainer() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Container(
        width: double.infinity,
        height: 85,
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
                height: 5,
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
                height: 5,
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
      ),
    );
  }

  addNewFile() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        right: 20,
        left: 20,
      ),
      child: Container(
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
      ),
    );
  }
}
