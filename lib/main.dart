import 'package:flutter/material.dart';
import 'package:project/viewmodel/viewmodel.dart';
import 'package:provider/provider.dart';
import 'dart:typed_data';

import 'package:project/alretdialog.dart';


void main() => runApp(const Mymaterial(),

);

class Mymaterial extends StatelessWidget {
  const Mymaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const StoreScreen(title: 'StoreScreen', ),
    );
  }
}

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key, required Object title});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Card> _buildGridCards(int count){
    List<Card> cards  = List.generate(
      count,
          (int index) {
        return const Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Column(
                children: [
                  AspectRatio (aspectRatio: 18.0/11.0,
                    child: Icon( Icons.diamond,size: 80 ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Title : Products', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,letterSpacing: 0.8,),),
                    SizedBox(height: 6.0,),
                    Text('Price :00.00 EG', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800,letterSpacing: 0.8,),),
                    TextButton(onPressed: (){
                      print(index);
                    } , child: Text("CLICK")),

                    
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:AppBar(
        title: const SizedBox(
          child: Center(
            child: Column(
              children: <Widget>[
                //Icon(Icons.diamond, color: Colors.amber, ),
                Text("SHRINE",style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.8,
                  fontSize: 30,
                  fontWeight:FontWeight.w300,
                ),),
              ],
            ),
          ),
        ),

        leading: IconButton(icon: const Icon ( Icons.menu, color: Colors.white,), onPressed: () async { },  ),
        actions: <Widget>[

          IconButton(icon: const Icon ( Icons.search, color: Colors.white,), onPressed: () async { },  ),

          IconButton(icon: const Icon ( Icons.tune, color: Colors.white,      semanticLabel: 'filter',
          ), onPressed: () async { },  ),

        ],

        backgroundColor: Colors.black,
      ) ,

      body: Consumer<ViewModel>(builder: (context , ViewModel, child ){

        return GridView.count(crossAxisCount: 2,
            padding: const EdgeInsets.all(16.0),
            childAspectRatio: 8.0/9.0,
            children: _buildGridCards(10)


        );
      },),

      floatingActionButton: FloatingActionButton(onPressed: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertArea()));
      },
      child: Icon(Icons.add),
      ),
    );
  }

  AlertArea() {}
}



void name(){

}

List<Text>listtext (int cont , String username){

  String textuser = "" ;

  List<Text> mytext = List.generate(cont, (int index) {
    print(index);
    return Text ("Hi ${textuser}");
  });

  return mytext;

}

