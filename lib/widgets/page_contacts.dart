import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/models/message_model.dart';

//Nesta página fiz o ListView de Contactos
//Nesta página fiz o ListView de Contactos
//Nesta página fiz o ListView de Contactos
class PageContacts extends StatefulWidget {
  const PageContacts({Key? key}) : super(key: key);

  @override
  State<PageContacts> createState() => _PageContactsState();
}

class _PageContactsState extends State<PageContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];
                  return Container(
                    padding: EdgeInsets.only(right: 0.5),
                    margin: EdgeInsets.only(
                        top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
                    decoration: BoxDecoration(/* color: Colors.white */),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.50,
                                  child: Text(
                                    chat.sender.name,
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      overflow: TextOverflow.ellipsis
                                    ),                                    
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.50,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                chat.time,
                                style: TextStyle(
                                    color: Theme.of(context).secondaryHeaderColor,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).secondaryHeaderColor,
                                  borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text(
                                    chat.text1,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Text(
                'Para ver mais opções, toque numa conversa e mantenha-a pressionada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Theme.of(context).primaryColor,
          )
        );
  }
}
