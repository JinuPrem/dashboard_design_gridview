import 'package:dashboard_design_gridview/model_page1.dart';
import 'package:flutter/material.dart';

import 'model_page2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List Griditems = [
    Modelgrid(
        col: Colors.cyan,
        image: "images/smartphone.png",
        text: "Default Theme"),
    Modelgrid(col: Colors.blue, image: "images/apps.png", text: "All Apps"),
    Modelgrid(
        col: Colors.green, image: "images/worldwide.png", text: "Integration"),
    Modelgrid(col: Colors.amber, image: "images/layout.png", text: "Dashboard")
  ];
  List Listitems=[
    Modellist(
      col:Colors.amber,
      image:"images/folder.png",
      title:"File Manager",
      subtitle:"Themes 1 screens",
      icon:Icons.chevron_right,
        col1:Colors.amber

    ),
    Modellist(
        col:Colors.green,
        image:"images/weightlifting.png",
        title:"Exercise",
        subtitle:"Themes 2 screens",
        icon:Icons.chevron_right,
      col1:Colors.green
    ),
    Modellist(
        col:Colors.blue,
        image:"images/serving-dish.png",
        title:"Food Recipe",
        subtitle:"Themes 3 screens",
        icon:Icons.chevron_right,
        col1:Colors.blue

    ),
    Modellist(
        col:Colors.cyan,
        image:"images/briefcase.png",
        title:"Gym",
        subtitle:"Themes 4 screens",
        icon:Icons.chevron_right,
        col1:Colors.cyan

    ),
    Modellist(
        col:Colors.amber,
        image:"images/customer-support.png",
        title:"E-Wallet",
        subtitle:"Themes 5 screens",
        icon:Icons.chevron_right,
        col1:Colors.amber

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("AllInOne UI Kit",style: TextStyle(color: Colors.black),),
        actions: [
          Switch(value: false, onChanged: (val){}),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: Griditems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                      childAspectRatio: 3 / 2),
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Griditems[index].col,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Image(
                                image: AssetImage(Griditems[index].image)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            Griditems[index].text,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 3,
            ),
            Text("Themes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
            SizedBox(
              height: 3,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: Listitems.length,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Listitems[index].col),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(Listitems[index].image))
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 80,
                            width: 260,
                            child: Card(
                              elevation: 10,
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0,top: 15),
                                    child: Text(Listitems[index].title,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(Listitems[index].subtitle),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:210.0,top: 18),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Listitems[index].col1,
                              child: Icon(Listitems[index].icon),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
                })
          ],
        ),
      ),
    );
  }
}
