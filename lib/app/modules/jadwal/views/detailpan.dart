import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailPan extends StatelessWidget {
  final Map pan;

  DetailPan({required this.pan});
  final _formKey = GlobalKey<FormState>();

  TextEditingController _idController = TextEditingController();
  TextEditingController _judulController = TextEditingController();
  TextEditingController _kategoriController = TextEditingController();
  TextEditingController _isiController = TextEditingController();

  Future detailpan() async {
    final response = await http.put(
        Uri.parse('http://192.168.47.30:8000/api/auth/panduan' +
            pan['id'].toString()),
        body: {
          "id": _idController.text,
          "judul": _judulController.text,
          "kategori": _kategoriController.text,
          "isi": _isiController.text,
        });
    print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Panduan"),
      ),
      body: Column(
        children: [
          Container(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  pan['judul'],
                  style: TextStyle(fontSize: 22),
                ),
                Text(
                  pan['kategori'],
                  style: TextStyle(fontSize: 22),
                ),
                // Row(
                //   children: [
                //     Icon(Icons.edit),
                //     Icon(Icons.delete),
                //   ],
                // ),
              ],
            ),
          ),
          Text(pan['isi'])
        ],
      ),
    );
  }
}
