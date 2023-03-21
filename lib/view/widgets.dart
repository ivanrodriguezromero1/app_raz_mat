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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                    leading: Icon(iconData, color: Colors.yellow.shade800,),
                    title: Text(topic,
                      style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.menu_book, color: Colors.orange.shade600),
                            onPressed: () {
                              // Acción del primer IconButton
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.orange.shade300,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit, color: Colors.orange.shade600),
                            onPressed: () {
                              dataModel.option = op;
                              goToProblems(dataModel,localizations);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
}