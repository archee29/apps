import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tugas_akhir/app/data/models/feeder_get.dart';
import 'package:http/http.dart' as http;

class FeederAPI {
  static String username = "admin";
  static String? aioKey = dotenv.env['API_Key'].toString();
  static String servoFeed = 'makanan';
  static String pumpFeed = 'minuman';
  static String led1Feed = 'led-1';
  static String rgbFeed = 'color';
  static String mainURL = '';

  static Future<FeederGET> getMakananData() async {
    http.Response response = await http.get(
      Uri.parse(mainURL + '$username/feeds/$servoFeed'),
      headers: <String, String>{'X-AIO-Key': aioKey!},
    );
    if (response.statusCode == 200) {
      return FeederGET.fromRawJson(response.body);
    } else {
      throw Error();
    }
  }

  static Future<FeederGET> getMinumanData() async {
    http.Response response = await http.get(
      Uri.parse(mainURL + '$username/feeds/$pumpFeed'),
      headers: <String, String>{'X-AIO-Key': aioKey!},
    );
    if (response.statusCode == 200) {
      return FeederGET.fromRawJson(response.body);
    } else {
      throw Error();
    }
  }

  static Future<FeederGET> getLed1Data() async {
    http.Response response = await http.get(
      Uri.parse(mainURL + '$username/feeds/$led1Feed'),
      headers: <String, String>{'X-AIO-Key': aioKey!},
    );
    if (response.statusCode == 200) {
      return FeederGET.fromRawJson(response.body);
    } else {
      throw Error();
    }
  }

  static Future<bool> updateLed1Data(String value) async {
    http.Response response = await http.post(
      Uri.parse(mainURL + '$username/feeds/$led1Feed/data'),
      headers: <String, String>{
        'X-AIO=Key': aioKey!,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "datum": {"value": value}
      }),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Error();
    }
  }

  static Future<FeederGET> getRGBstatus() async {
    http.Response response = await http.get(
      Uri.parse(mainURL + '$username/feeds/$rgbFeed'),
      headers: <String, String>{'X-AIO-Key': aioKey!},
    );
    if (response.statusCode == 200) {
      return FeederGET.fromRawJson(response.body);
    } else {
      throw Error();
    }
  }

  static Future<bool> updateRGBdata(String value) async {
    http.Response response = await http.post(
      Uri.parse(mainURL + '$username/feeds/$rgbFeed/data'),
      headers: <String, String>{
        'X-AIO-Key': aioKey!,
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "datum": {"value": value}
      }),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Error();
    }
  }
}
