
import 'package:flutter/material.dart';
import './main.dart';
import './contest.dart';
import './Profile.dart';

class CImages {
  CImages({required this.image});
  String image;
}

final List<CImages> _CImages = <CImages>[
  CImages(image: 'assets/images/m1.jpeg'),
  CImages(image: 'assets/images/m2.jpeg'),
  CImages(image: 'assets/images/m3.jpeg'),
];


class Home extends StatelessWidget{
  const Home({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream11',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Dream11'),
              leading: IconButton(icon:Icon(Icons.account_circle_rounded),
                //onPressed:() => Navigator.pop(context, false),
                onPressed:() {
                  // print(nameController.text);
                  // print(passwordController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
              )
            // leading: Icon(Icons.account_circle_rounded),
            // actions: [
            //   Icon(Icons.more_vert),
            // ],
          ),
          body: Stack(
            children: <Widget>[
              Column(
                verticalDirection: VerticalDirection.down,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 160.0,
                    color: Colors.grey[350],
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _CImages.length,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          child: Card(
                            elevation: 2.0,
                            child: Container(
                              height: 150.0,
                              width: 350.0,
                              child: Image.asset(_CImages[index].image,
                                fit: BoxFit.fill,),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Material(
                    elevation: 5.0,

                    child: Container(
                      decoration: BoxDecoration(),
                      child: TabBar(

                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: 2.0,
                            )
                        ),
                        labelColor: Colors.grey,
                        tabs: [
                          Tab(
                            text: 'Fixtures',
                          ),
                          Tab(
                            text: 'Live',
                          ),
                          Tab(
                            text: 'Upcoming',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Select a match',
                      style: TextStyle(
                        color: Colors.grey[600]
                      ),)
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Expanded(
                      child: Container(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: 6,
                            itemBuilder: (BuildContext context,int index){
                              return Container(
                                height: 120.0,
                                width: 180.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // print(nameController.text);
                                    // print(passwordController.text);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Contest()),
                                    );
                                  },
                                  child: Card(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Image.asset('assets/images/ind.png',height: 60, width: 60,),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text('International'),
                                            SizedBox(height: 10.0,),
                                            Text('Ind V/s SL'),
                                            SizedBox(height: 10.0,),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.timer,
                                                  size: 15.0,
                                                  color: Colors.red,),
                                                SizedBox(width: 10.0,),
                                                Text('00hr 45min 32s',
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 15.0,
                                                  ),)
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Image.asset('assets/images/sl.png',height: 60, width: 60,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              );
                            }
                        ),
                      ),
                  )
                ],
              ),
            ],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: 0,
          //   items: [
          //     BottomNavigationBarItem(
          //         title: Text('Home',
          //           style: TextStyle(
          //           color: Colors.grey,
          //           ),),
          //         icon: Icon(Icons.home,
          //         color: Colors.grey,)
          //     ),
          //
          //     BottomNavigationBarItem(
          //         title: Text('Star',
          //           style: TextStyle(
          //             color: Colors.grey,
          //           ),),
          //         icon: Icon(Icons.star,
          //           color: Colors.grey,)
          //     ),
          //
          //     BottomNavigationBarItem(
          //         title: Text('Person',
          //           style: TextStyle(
          //             color: Colors.grey,
          //           ),),
          //         icon: Icon(Icons.person,
          //           color: Colors.grey,)
          //     ),
          //
          //     BottomNavigationBarItem(
          //         title: Text('More',
          //           style: TextStyle(
          //             color: Colors.grey,
          //           ),),
          //         icon: Icon(Icons.more,
          //           color: Colors.grey,)
          //     ),
          //   ],
          // ),
        ),
      )
    );
  }
}

// class MyCard extends StatelessWidget{
//   MyCard({this.icon, this.text});
// }


