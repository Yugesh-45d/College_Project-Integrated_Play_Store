// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/foundation.dart';

class BusinessCardDataModel {
  String name;
  String email;
  String profession;
  String phoneNumber;
  Uint8List? image;
  BusinessCardDataModel({
    required this.name,
    required this.email,
    required this.profession,
    required this.phoneNumber,
    required this.image,
  });
}
