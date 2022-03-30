import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.green,
              title: Text('WhatsApp'),
              pinned: true,
              floating: true,
              elevation: 0.7,
              actions: [
                Icon(Icons.search),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13)
                ),
                Icon(Icons.more_vert),
                SizedBox(width: 10,)
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
          children: <Widget>[
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
          ],
        ),
      )),
    );
  }
}
