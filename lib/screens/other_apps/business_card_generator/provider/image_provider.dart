import 'package:flutter/material.dart';
import 'package:play_store_app/screens/other_apps/business_card_generator/models/data_model.dart';

class BusinessCardDataProvider extends ChangeNotifier {
  List<BusinessCardDataModel> mydata = [];

  void addToList(BusinessCardDataModel mydatas) {
    mydata.add(mydatas);
    notifyListeners();
  }
}
