import 'package:flutter/material.dart';
import 'package:project/model/model.dart';


class ViewModel extends ChangeNotifier{

  List< UsersModel > users = < UsersModel >[];

  void adduser( UsersModel newusers){
    users.add(newusers);
    notifyListeners();
  }

  String getusername(int i){
    return users[i].username;
  }
}