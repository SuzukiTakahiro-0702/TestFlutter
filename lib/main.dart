//ショートカットキー一覧
//https://note.com/hatchoutschool/n/nbe65b4868ab0
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http; //httpリクエスト用
import 'dart:async'; //非同期処理用
import 'package:flutter/services.dart' show rootBundle;
import 'main2.dart';
import 'dart:convert'; //httpレスポンスをJSON形式に変換用

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '施設予約',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '施設予約'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    //initStateはWidgetが作成されたときに動く。
    //ここに初期化の処理を書く。
    //overrideするときは必ず親Classも呼び出す必要がある。
    //https://tech-rise.net/what-is-lifecycle-of-state/
    super.initState();
    GetJson().loadJson();
  }

  bool isColor = false;
  int sss=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Table(
            border: TableBorder.all(color: Colors.grey),
            children: <TableRow>[
              //https://note.com/hatchoutschool/n/nffd0591ffa66
              //簡潔にwidget表示
              TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.lightGreen,
                  ),
                  children: ['時間', '大学会議室1', '大学会議室2', '大学会議室3']
                      .map((e) => Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              e,
                              style: const TextStyle(fontSize: 15.0),
                            ),
                          ))
                      .toList()),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    isColor = true;
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text(''),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: isColor ? Colors.lightGreen : Colors.white,
                    child: const Center(
                      child: Text('08:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('08:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('09:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('09:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('10:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('10:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('11:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('11:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('12:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('12:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('13:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('13:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('14:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('14:30'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
              TableRow(children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Aの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text('15:00'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Bの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Cの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Dの動作の確認'),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey[200],
                    child: const Center(
                      child: Text(''),
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
