import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'InternetConnection.dart';

class FireBaseService {
  static FirebaseDatabase database = FirebaseDatabase.instance;

  static Future<bool> addData(String add, dynamic value) async {
    bool isAddData = false;
    bool connection = await InternetConnection.checkUserConnection();
    if (connection) {
      try {
        String? key = database.ref(add).push().key;
        add = "${add}/${key}";

        DatabaseReference _refrence = database.ref(add);
        await _refrence.set(value).then(
              (value) {
            isAddData = true;
          },
        );
      } on PlatformException catch (error, stackTrace) {
        print(stackTrace);
        isAddData = false;
        Get.snackbar("SignUp Error😊😊😊", error.message!);
      } catch (e) {
        Get.snackbar("SignUp Error", "$e");
        isAddData = false;
      }
    }
    return isAddData;
  }

  ///--------------------------Get Data---------------------------///
  static Future<Map?> getAllData(String key) async {
    Map? allData;
    bool connection = await InternetConnection.checkUserConnection();
    if (connection) {
      try {
        DatabaseReference reference = database.ref(key);
        await reference.get().then(
              (data) {
            if (data.value != null) {
              allData = data.value as Map;
              print(data);
            }else{
              allData={};
            }
          },
        );
      } on PlatformException catch (error, stackTrace) {
        print(stackTrace);
        Get.snackbar("Data Error😊😊😊", error.message!);
      } catch (e) {
        Get.snackbar("Data Error", "$e");
      }
    }
    return allData;
  }
}
