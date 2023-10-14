import 'package:flutter/material.dart';
import 'package:project/model/model.dart';
import 'package:project/viewmodel/viewmodel.dart';
import 'package:provider/provider.dart';



class Myalertdialoge extends StatelessWidget {
   Myalertdialoge({super.key});

  final text = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Consumer<ViewModel> (builder: (context , viewModel , child){

      return AlertDialog(
        title: new Text("Alert!!"),
        content: new Text("You are awesome"),
        actions: <Widget>[
          TextField(
            controller: text,
            decoration: InputDecoration(
              label: Text("username")
            ),
          ),
          TextButton( child: new Text("OK") , onPressed: (){
            ViewModel viewmode = new ViewModel();
            viewmode.adduser(text.text as UsersModel);
            Navigator.of(context).pop();
          },
          ),
        ],
      )  ;
    } )  ;
  }
}
