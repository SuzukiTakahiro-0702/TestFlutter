//ショートカットキー一覧
//https://note.com/hatchoutschool/n/nbe65b4868ab0
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http; //httpリクエスト用
import 'dart:async'; //非同期処理用
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert'; //httpレスポンスをJSON形式に変換用

class GetJson {
  //Futureは非同期処理の戻り値。非同期処理なので、先にテキトーな戻り値を
  //返しておいて(Futureをまず返す）、処理が完了したらちゃんとした戻り値を返す
  Future loadJson() async {
    List F_RESERVATION_NUMBER = <dynamic>[];
    List F_ROOM_ID = <dynamic>[];
    List F_START_DATE = <dynamic>[];
    List F_END_DATE = <dynamic>[];
    List F_START_TIME = <dynamic>[];
    List F_END_TIME = <dynamic>[];
    dynamic loadData = await rootBundle.loadString('json/data2.json');
    print('===============loadData===============');
    print(loadData);
    print('===============loadData===============');

    dynamic jsonDecodeData = json.decode(loadData);
    try {
      print(jsonDecodeData.length);
      for (int i = 0; i < jsonDecodeData.length; i++) {
        F_RESERVATION_NUMBER
            .add(jsonDecodeData[i]['F_RESERVATION_NUMBER'].toString());
        F_ROOM_ID.add(jsonDecodeData[i]['F_ROOM_ID'].toString());
        F_START_DATE.add(jsonDecodeData[i]['F_START_DATE'].toString());
        F_END_DATE.add(jsonDecodeData[i]['F_END_DATE'].toString());
        F_START_TIME.add(jsonDecodeData[i]['F_START_TIME'].toString());
        F_END_TIME.add(jsonDecodeData[i]['F_END_TIME'].toString());
        print('===============Set data===============');
        print('F_RESERVATION_NUMBER(' + ')' + F_RESERVATION_NUMBER[i]);
        print('F_ROOM_ID(' + ')' + F_ROOM_ID[i]);
        print('F_START_DATE(' + ')' + F_START_DATE[i]);
        print('F_END_DATE(' + ')' + F_END_DATE[i]);
        print('F_START_TIME(' + ')' + F_START_TIME[i]);
        print('F_END_TIME(' + ')' + F_END_TIME[i]);
        print('===============Set data===============');
      }
    } catch (e) {
      print('なんらかのエラー');
    }

    //ブラウザから取得する場合
    //final res = await http.get(Uri.parse(
    //    'http://172.17.23.236/getdata.cgi'));
    //if (res.statusCode == 200) {
    //  final jsonResponse = json.decode(res.body);
    //  print('----------------');
    //  print(jsonResponse);

    //   print('----------------');
    // } else {
    //   throw Exception('Fail!!!!!!');
    // }
  }
}
