import 'package:flutter/material.dart';
import 'package:test_1/A_model/page_box-state.dart';

class BOX_state_provider with ChangeNotifier {
List<page1_box_state> page1_box_states = [page1_box_state(BOX: 0)];

 List<page1_box_state> get_all(){
    return page1_box_states;
  }
  
  Future<void> update_page( int data)async{
    page1_box_states[0].BOX = data;
    notifyListeners();
  }

}