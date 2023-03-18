import 'package:flutter/material.dart';
import 'package:raz_mat/viewmodels/providers.dart';
import '../viewmodels/my_app_localizations.dart';

Container getItem(MyAppLocalizations localizations, 
                  DataModel dataModel, 
                  Function goToProblems,
                  IconData iconData,
                  String topic,
                  int op){
  return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.yellow.shade700,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 18.0),
                    leading: Icon(iconData, color: Colors.yellow.shade800,),
                    title: Text(topic,
                    style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                    ),
                    onTap: () {
                    dataModel.option = op;
                    goToProblems(dataModel,localizations);
                    },
                  ),
                );
}