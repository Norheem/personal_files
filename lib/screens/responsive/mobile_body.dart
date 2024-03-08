import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';
import 'package:personal_files/core/theme/app_theme.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.lightTheme.scaffoldBackgroundColor,
      ),
      drawer: Drawer(
        // Set the background color for the entire drawer
        child: Container(
          color: AppColor.drawerBG,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Center(
                  child: ClipOval(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/profile4.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.lock_person_rounded),
                title: const Text('My Cloud'),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: () {
                  // Implement navigation to home
                },
              ),
              ListTile(
                leading: const Icon(Icons.people_alt),
                title: const Text('Shared files'),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: () {
                  // Implement navigation to settings
                },
              ),
              ListTile(
                leading: const Icon(Icons.star),
                title: const Text('Favourites'),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: () {
                  // Implement navigation to settings
                },
              ),
              ListTile(
                leading: const Icon(Icons.cloud_upload),
                title: const Text('Upload files'),
                textColor: Colors.white,
                iconColor: Colors.white,
                onTap: () {
                  // Implement navigation to settings
                },
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      onTap: () {
                        // Implement navigation to settings
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text('Log out'),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      onTap: () {
                        // Implement navigation to settings
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
              cardContainer(),
              const SizedBox(
                height: 10,
              ),
              filesText(),
              const SizedBox(
                height: 10,
              ),
              fileContainer(),
              const SizedBox(
                height: 10,
              ),
              recentFilesText(),
              const SizedBox(
                height: 10,
              ),
              recentFilesContainer(),
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
              sharedFolderContainer(),
            ],
          ),
        ),
      )),
    );
  }

  sharedFolderContainer() {
    return Container(
      height: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.addFileContainerBg,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your shared folders',
                  style: TextStyle(
                    color: AppColor.drawerBG,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Add any other widgets if needed
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.containerOne,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Keynote files',
                      style: TextStyle(
                        color: AppColor.drawerBG,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            right: 40,
                            bottom: 7,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile.webp',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 180,
                            bottom: 7,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile4.png',
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
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.containerTwo,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Vacation photos',
                      style: TextStyle(
                        color: AppColor.drawerBG,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            left: 150,
                            bottom: 7,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile4.png',
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
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.containerThree,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Project report',
                      style: TextStyle(
                        color: AppColor.drawerBG,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Positioned(
                            right: 40,
                            bottom: 7,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile.webp',
                                width: 35,
                                height: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 175,
                            bottom: 7,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/profile4.png',
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
            Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color.fromARGB(255, 163, 195, 239),
                ),
              ),
              child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 163, 195, 239),
                      ),
                      Text(
                        'Add more',
                        style: TextStyle(
                          color: Color.fromARGB(255, 163, 195, 239),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
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

  recentFilesContainer() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.cardOne,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Center(
                      child: Text(
                        'IMG_100000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    'PNG file',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    '5 MB',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Icon(
                    Icons.share,
                    color: AppColor.cardFour,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Center(
                  child: Icon(
                    Icons.more_horiz,
                    color: AppColor.cardFour,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.cardThree,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.videocam_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Center(
                      child: Text(
                        'Startup pitch',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    'AVI file',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    '105 MB',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Icon(
                    Icons.share,
                    color: AppColor.cardFour,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Center(
                  child: Icon(
                    Icons.more_horiz,
                    color: AppColor.cardFour,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.cardFour,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Center(
                      child: Text(
                        'Freestyle beat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    'MP3 file',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Text(
                    '21 MB',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Icon(
                    Icons.share,
                    color: AppColor.cardFour,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Center(
                  child: Icon(
                    Icons.more_horiz,
                    color: AppColor.cardFour,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.cardTwo,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.file_copy,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Center(
                      child: Text(
                        'Work proposal  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                const Center(
                  child: Text(
                    'Docx file',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Center(
                  child: Text(
                    '500 kb',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Center(
                  child: Icon(
                    Icons.share,
                    color: AppColor.cardFour,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Center(
                  child: Icon(
                    Icons.more_horiz,
                    color: AppColor.cardFour,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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

  fileContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.storage,
                        color: AppColor.cardOne,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Work',
                    style: TextStyle(
                      color: AppColor.drawerBG,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '820 files',
                    style: TextStyle(
                      color: AppColor.drawerBG,
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
          const SizedBox(
            width: 10,
          ),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColor.cardTwo,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Personal',
                    style: TextStyle(
                      color: AppColor.drawerBG,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '115 files',
                    style: TextStyle(
                      color: AppColor.drawerBG,
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
          const SizedBox(
            width: 10,
          ),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.school,
                        color: AppColor.cardThree,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'School',
                    style: TextStyle(
                      color: AppColor.drawerBG,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '65 files',
                    style: TextStyle(
                      color: AppColor.drawerBG,
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
          const SizedBox(
            width: 10,
          ),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.storefront_rounded,
                        color: AppColor.cardFour,
                        size: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Archive',
                    style: TextStyle(
                      color: AppColor.drawerBG,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '21 files',
                    style: TextStyle(
                      color: AppColor.drawerBG,
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
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 120,
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                color: AppColor.cardFour,
              ),
            ),
          ),
        ],
      ),
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

  cardContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 120,
            height: 110,
            decoration: BoxDecoration(
              color: AppColor.cardOne,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
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
                          Icons.camera_alt,
                          color: AppColor.cardOne,
                          size: 15,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pictures',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '480 files',
                    style: TextStyle(
                      color: Color.fromARGB(255, 198, 198, 198),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 120,
            height: 110,
            decoration: BoxDecoration(
              color: AppColor.cardTwo,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
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
                          Icons.file_copy,
                          color: AppColor.cardTwo,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Documents',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '190 files',
                    style: TextStyle(
                      color: Color.fromARGB(255, 198, 198, 198),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 120,
            height: 110,
            decoration: BoxDecoration(
              color: AppColor.cardThree,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
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
                          Icons.videocam_rounded,
                          color: AppColor.cardThree,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Videos',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '30 files',
                    style: TextStyle(
                      color: Color.fromARGB(255, 198, 198, 198),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 120,
            height: 110,
            decoration: BoxDecoration(
              color: AppColor.cardFour,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
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
                          Icons.mic,
                          color: AppColor.cardFour,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Audio',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '80 files',
                    style: TextStyle(
                      color: Color.fromARGB(255, 198, 198, 198),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
