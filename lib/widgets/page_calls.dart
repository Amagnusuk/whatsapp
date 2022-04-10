import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/models/message_model.dart';

class PageCalls extends StatefulWidget {
  const PageCalls({Key? key}) : super(key: key);

  @override
  State<PageCalls> createState() => _PageCallsState();
}

class _PageCallsState extends State<PageCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final chat = chats[index];
            return Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(chat.sender.imageUrl),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Text(
                              chat.sender.name,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Text(
                              chat.textCall,
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                overflow: TextOverflow.ellipsis
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.video_call_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            );
          }
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.phone_forwarded_rounded),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
