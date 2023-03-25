import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'data.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String _namaLengkap = "";
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Pembelian Tiket')),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hai Selamat Datang",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 24),
              Text("Lengkapi Form untuk pembelian tiket"),
              SizedBox(height: 12),
              _buildForm(),
              SizedBox(height: 24),
              _buildButtonSubmit(),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context); // menutup halaman dan kembali ke halaman sebelumnya
                },
                child: Text('Kembali'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _formInput(
      {required String hint,
      required String label,
      required Function(String value) setStateInput,
      int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        contentPadding: const EdgeInsets.all(20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 12),
        _formInput(
          hint: "Masukkan Nama Lengkap",
          label: "Nama *",
          setStateInput: (value) {
            setState(() {
              _namaLengkap = value;
            });
          },
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Masukkan Alamat Email",
          label: "Email *",
          setStateInput: (value) {
            setState(() {
              _email = value;
            });
          },
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildButtonSubmit() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          if (_namaLengkap == "" || _email == "") {
            SnackBar snackBar = SnackBar(
              content: Text("* data tidak boleh kosong"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return DataBeliTiket(
                nama: _namaLengkap,
                email: _email,
              );
            }));
          }
        },
        child: Text('Submit'),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: TextStyle(fontSize: 16)),
      ),
    );
  }
}
