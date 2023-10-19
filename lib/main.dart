import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title : Text("Tabs Demo"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  icon: Icon(Icons.bus_alert),
                ),
                Tab(
                  icon: Icon(Icons.train),
                ),
              ],

            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.car_crash),
              Icon(Icons.bus_alert),
              Icon(Icons.train),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color : Colors.blue[500]
                  ),
                  child: Text("Profile"),
                ),
                ListTile(
                  title: Text("car"),
                ),
                ListTile(
                  title: Text("Bus"),
                ),
                ListTile(
                  title: Text("Train"),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

