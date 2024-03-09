import 'package:flutter/material.dart';
import 'package:personal_files/constant/color.dart';

List recentFileData = [
  {
    "id": 0,
    "fileName": "IMG_100000",
    "icon": Icons.camera_alt,
    "fileType": "PNG file",
    "fileSize": "5 MB",
    "color": AppColor.cardFour
  },
  {
    "id": 0,
    "fileName": "Startup pitch",
    "icon": Icons.videocam_rounded,
    "fileType": "AVI file",
    "fileSize": "105 MB",
    "color": AppColor.cardThree
  },
  {
    "id": 0,
    "fileName": "Freestyle beat",
    "icon": Icons.videocam_rounded,
    "fileType": "MP3 file",
    "fileSize": "21 MB",
    "color": AppColor.cardTwo
  },
  {
    "id": 0,
    "fileName": "Work proposal",
    "icon": Icons.videocam_rounded,
    "fileType": "Docx file",
    "fileSize": "500 kb",
    "color": AppColor.cardOne
  },
];
List topNav = [
  {"id": 0, "name": "My Cloud", "icon": Icons.lock_person_rounded},
  {"id": 0, "name": "Shared files", "icon": Icons.people_alt},
  {"id": 0, "name": "Favourites", "icon": Icons.star},
  {"id": 0, "name": "Upload files", "icon": Icons.cloud_upload},
];
List bottomNav = [
  {"id": 0, "name": "Settings", "icon": Icons.settings},
  {"id": 0, "name": "Log out", "icon": Icons.logout},
];

List catergoriesContainer = [
  {
    'id': 0,
    'color': AppColor.cardOne,
    'icon': Icons.camera_alt,
    'second_icon': Icons.star,
    'name': 'Pictures',
    'file_number': '480 files',
  },
  {
    'id': 0,
    'color': AppColor.cardTwo,
    'icon': Icons.file_copy,
    'name': 'Documents',
    'file_number': '190 files',
  },
  {
    'id': 0,
    'color': AppColor.cardThree,
    'icon': Icons.videocam_rounded,
    'name': 'Videos',
    'file_number': '30 files',
  },
  {
    'id': 0,
    'color': AppColor.cardFour,
    'icon': Icons.mic,
    'name': 'Audio',
    'file_number': '80 files',
  }
];

List sharedContainer = [
  {
    'name': 'Work',
    'icon': Icons.storage,
    'icon_color': AppColor.cardOne,
    'file_text': '820 files',
  },
  {
    'name': 'Personal',
    'icon': Icons.person,
    'icon_color': AppColor.cardTwo,
    'file_text': '115 files',
  },
  {
    'name': 'School',
    'icon': Icons.school,
    'icon_color': AppColor.cardThree,
    'file_text': '65 files',
  },
  {
    'name': 'Archive',
    'icon': Icons.storefront_rounded,
    'icon_color': AppColor.cardFour,
    'file_text': '21 files',
  },
  {
    'icon': Icons.add,
    'icon_color': AppColor.cardOne,
  },
];

List sharedFolderContainer = [
  {
    'id': 0,
    'color': AppColor.containerOne,
    'name': 'Keynote files',
    'image_1': 'assets/profile.webp',
    'image_2': 'assets/profile4.png',
  },
  {
    'id': 0,
    'color': AppColor.containerThree,
    'name': 'Project report',
    'image_1': 'assets/profile.webp',
    'image_2': 'assets/profile4.png',
  },
  {
    'id': 0,
    'color': AppColor.containerOne,
    'icon': Icons.add,
    'middle_name': 'Add more',
    'border_color': const Color.fromARGB(255, 163, 195, 239),
  },
  {
    'id': 1,
    'color': AppColor.containerTwo,
    'name': 'Vacation photos',
    'image_1': 'assets/profile4.png',
  },
];
