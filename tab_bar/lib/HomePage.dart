import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(bottom: TabBar(tabs: [
        Tab(text: "tab1",icon: Icon(Icons.add),),
        Tab(text: "tab2",),
        Tab(text: "tab3",),
      ]),),
      body: TabBarView(children: [
        Container(color: Colors.pink,
          child: Column(
            children: [
              Text("nagma")],),),
        TextField(decoration: InputDecoration(hintText: "name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),),
        Container(color: Colors.yellowAccent,),
        Container(color: Colors.green,),
      ]),
    )),
    );
  }
}
