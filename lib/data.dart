import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class DataBeliTiket extends StatelessWidget {
  final String nama;
  final String email;

  const DataBeliTiket({
    Key? key,
    required this.nama,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text("Tiket Details")),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Silahkan cek email anda untuk pembelian data dibawah ini",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    email,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // background color
                          onPrimary: Colors.white, // text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // button border radius
                          ),
                          minimumSize: Size(150, 50), // button minimum size
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return MyApp();
                            }),
                            (route) => false,
                          );
                        },
                        child: Text("Hompe Page"),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
