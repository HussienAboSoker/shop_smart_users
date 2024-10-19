import 'package:flutter/material.dart';
import 'package:shop_smart_users/models/view_recently.dart';
import 'package:uuid/uuid.dart';

class ViewRecntlyprovider with ChangeNotifier {
  final Map<String, ViewRecentlyModel> _viewRecentlyMap = {};
 Map<String, ViewRecentlyModel> get getviewrecnetly {
  return _viewRecentlyMap;
 }

  addToViewRecently({required productId}) {
    _viewRecentlyMap.putIfAbsent(
      productId,() => 
      ViewRecentlyModel(productId: productId, viewrecnetlyId: const Uuid().v4()),

    );
    notifyListeners();
  }
  

   
  
}
