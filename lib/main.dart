import 'package:flutter/material.dart';
import 'formdata.dart';
import 'placelists.dart';
import 'place_lists.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tugas modul 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Destinasi wisata Jawa Barat",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background color
                onPrimary: Colors.white, // text color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // button border radius
                ),
                minimumSize: Size(150, 50), // button minimum size
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormPage()));
              },
              child: Text('Beli Tiket'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background color
                onPrimary: Colors.white, // text color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // button border radius
                ),
                minimumSize: Size(150, 50), // button minimum size
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TourismLists()));
              },
              child: Text('Tempat Wisata'),
            ),
          ],
        ),
      ),
    );
  }
}
