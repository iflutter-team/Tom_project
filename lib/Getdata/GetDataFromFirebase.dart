import 'package:firebase_database/firebase_database.dart';
import 'package:tom_project/utils/firebase_res.dart';

import '../model/tom_model.dart';


class GetDataFromFirebase {
  static Future<List<User>?> getAllSignUpUserFromFirebase() async {
    FirebaseDatabase database = FirebaseDatabase.instance;

    DatabaseReference reference =
    database.ref(FirebaseRes.allSignUpUsersFirebaseKey,);
    List<User>? allUserList = [];
    await reference.get().then((value) {
      Map allData = value.value as Map;

      allData.forEach((key, value) {
        value['id'] = key;

        allUserList.add(User.fromJson(value));
      });
    });
    return allUserList;
  }
}
