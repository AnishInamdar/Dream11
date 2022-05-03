import 'package:flutter/material.dart';
import './home.dart';
List<String> imagePaths = [
  "assets/images/score.jpeg",
  "assets/images/rank.jpeg",
];
class Contest extends StatelessWidget{
  const Contest({Key? key}): super(key: key);
  List<Widget> renderImages() {
    var temp = <Widget>[];
    for (var imagePath in imagePaths) {
      // add some conditional logic here
      if (imagePath.contains('score') || imagePath.contains('rank')) {
        temp.add(ImageCard(
          imagePath: imagePath,
        ));
      }
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Dream11',
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text('Dream11'),
              leading: IconButton(icon:Icon(Icons.arrow_back),
                //onPressed:() => Navigator.pop(context, false),
                onPressed:() {
                  // print(nameController.text);
                  // print(passwordController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              )
          ),

          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: renderImages(),
              ),
            ),
          ),
    ),
      ));
  }
}
class ImageCard extends StatelessWidget {
  final String imagePath;

  ImageCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Image.asset(imagePath),
    );
  }
}


