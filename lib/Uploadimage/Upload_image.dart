import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Uploadimage extends StatefulWidget {
  const Uploadimage({super.key});

  @override
  State<Uploadimage> createState() => _UploadimageState();
}

class _UploadimageState extends State<Uploadimage> {
bool loding =false;
  File? _image;
  final picker = ImagePicker();
  firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref("image");

  Future onTapSelectImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile!=null){
        _image = File(pickedFile.path);
      }else{
        print("No Image Picked");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Upload'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: (){
                onTapSelectImage();
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    )
                ),
                child: _image != null ? Image.file(_image!.absolute) : Center(child: Icon(Icons.image)),
              ),
            ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                loding =true;
              });
              firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref('users').child('1');
              firebase_storage.UploadTask uploadtask = ref.putFile(_image!.absolute);
              await Future.value(UploadTask);
              var newurl = ref.getDownloadURL();
            },
            child: const Text("Upload"),
          ),
        ],
      ),
    );
  }
}

