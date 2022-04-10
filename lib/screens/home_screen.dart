import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/page_calls.dart';
import 'package:whatsapp/widgets/page_contacts.dart';
import 'package:whatsapp/widgets/page_status.dart';

//Nesta página está o código do AppBar e TabBar
//Nesta página está o código do AppBar e TabBar
//Nesta página está o código do AppBar e TabBar
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (
              BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    backgroundColor: Theme.of(context).primaryColor,//Colors.green[900],
                    title: Text('WhatsApp'),
                    pinned: true,
                    floating: true,
                    elevation: 0.7,
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search)
                      ),
                    /*  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8)
                      ),*/
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert)
                      ),
                      SizedBox(width: 7,)
                    ],
                    bottom: TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 3,
                    isScrollable: true,
                    tabs: [
                      Tab(
                        icon: Icon(
                      Icons.camera_alt,
                      )
                    ),
                    Tab(
                      child: Text(
                        "CONVERSAS",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "ESTADO",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "CHAMADAS",
                      ),
                    ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            Icon(Icons.directions_transit, size: 350),
            PageContacts(),
            PageStatus(),
            PageCalls(),
          ],
        ),
      )),
    );
  }
}
