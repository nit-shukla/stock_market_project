import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static login(Map data) {
    print(data);

    var response = {
      "access_token": "239|j5AsHocoMxvG5THK9LeOmP8DcktcDxZGdlKJzQen"
    };
    SharedPreferences.getInstance();
  }
}
