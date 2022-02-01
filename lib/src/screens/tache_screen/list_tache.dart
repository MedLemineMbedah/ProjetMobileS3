import 'package:flutter/material.dart';
import 'package:projects3/src/screens/project_screen/list_project.dart';

class ListTache extends StatelessWidget {
  static const String screenName = 'listTache';
  Function changeScreen;
   ListTache({ Key? key ,required this.changeScreen }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('les taches') ,
        // to return to  ListProject screen 
        leading: IconButton(icon:Icon(Icons.arrow_back) , onPressed: (){changeScreen(selectedScreen: ListProject.screenName);},),
        ),
      body: Center(
        child: Text('ListTache'),
      ),
      
    );
  }
}