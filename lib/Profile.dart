import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Dream11'),
      ),


      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment :CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,

              decoration:BoxDecoration(
                  border:Border.all(
                      color: Colors.grey.shade200,
                      width: 3
                  ),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.white,
                    ),
                  ]
              ) ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 30,
                    child: Text(
                      "A",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "anish.s.inamdar45@gmail.com",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Personal Details",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text("Anish Inamdar"),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text("anish.s.inamdar45@gmail.com"),
                  leading: Icon(Icons.email),
                ),
                ListTile(
                    title: Text("Male"),
                    leading: Icon(Icons.male)
                ),
              ],
            ) ,
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  title: Text("Cottongreen, Mumbai"),
                  leading: Icon(Icons.home),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
