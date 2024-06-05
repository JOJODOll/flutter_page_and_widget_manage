import 'package:flutter/material.dart';
import 'package:test_1/A_model/page-state.dart';

class page_manage_provider with ChangeNotifier {
List<page_state> page_states = [page_state(page: 0)];

  List<page_state> get_all(){
    return page_states;
  }
  
  Future<void> update_page( int data)async{
    page_states[0].page = data;
    notifyListeners();
  }


}