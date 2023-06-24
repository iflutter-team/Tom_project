import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'InternetConnection.dart';

class FireBaseService {
  static FirebaseDatabase database = FirebaseDatabase.instance;

  ///---------------------------------- Set Value ---------------------------------///

  static Future<bool> addData(String key, dynamic value) async {
    bool isAddData = false;
    bool connection = await InternetConnection.checkUserConnection();

    if (connection) {
      try {
        String? userKey = database.ref(key).push().key;
        key = "$key/$userKey";
        if (kDebugMode) {
          print(key);
        }
        DatabaseReference reference = database.ref(key);
        await reference.set(value).then((value) {
          isAddData = true;
        });
      } on PlatformException catch (error, stackTrace) {
        print(stackTrace);
        Get.snackbar("SignUp Error", error.message!);
      } catch (e) {
        Get.snackbar("SignUp Error", "$e");
      }
    }
    return isAddData;
  }

  ///--------------------------------- Get Data -----------------------------------///

  static Future<Map?> getAllData(String key) async {
    Map? allData;
    bool connection = await InternetConnection.checkUserConnection();
    if (connection) {
      try {
        DatabaseReference reference = database.ref(key);
        await reference.get().then((data) {
          if (data.value != null) {
            allData = data.value as Map;
          } else {
            allData = {};
          }
          print(data);
        });
      } on PlatformException catch (error, stackTrace) {
        print(stackTrace);
        Get.snackbar("Data Error", error.message!);
      } catch (e) {
        Get.snackbar("Data Error", "$e");
      }
    }
    return allData;
  }
}
