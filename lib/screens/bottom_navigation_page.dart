import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pingpong_mixingorilla/model/bottom_navi_model.dart';
import 'package:pingpong_mixingorilla/room/create_room_page.dart';
import 'package:provider/provider.dart';

class BottomNavigationPage extends StatelessWidget {
  List<Widget> _pageList = <Widget>[
    CreateRoomPage(),
    // SettingPage(),
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PingPongMixinGorilla',
        theme: ThemeData(
          primaryColor: Colors.pink,
          brightness: Brightness.dark,
          accentColor: Colors.white10,
          primarySwatch: Colors.pink,
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(11)),
            ),
          ),
          fontFamily: "DoraQue",
        ),
        home: ChangeNotifierProvider<BottomNavigateModel>(
            create: (_) => BottomNavigateModel(),
            child: Consumer<BottomNavigateModel>(
              builder: (context, model, child) {
                return Scaffold(
                  // 今選択している番号のページを呼び出します。
                  body: _pageList[model.selectedIndex],
                  bottomNavigationBar: BottomNavigationBar(
                    // 選択時の色やBarの色など設定できます。
                    backgroundColor: Colors.black,
                    // 選択中のアイコンを更新しています。
                    currentIndex: model.selectedIndex,

                    // ここからが肝です。
                    onTap: (index) {
                      // indexで今タップしたアイコンの番号にアクセスできます。
                      model.selectedIndex =
                          index; // indexをモデルに渡したときに notifyListeners(); を呼んでいます。
                    },
                    items: [
                      // フッターアイコンの要素を並べています 最低2個以上必要みたいです。
                      BottomNavigationBarItem(
                        // アイコンとラベルは自由にカスタムしてください。
                        icon: Icon(
                          Icons.person,
                          color: Colors.pinkAccent,
                        ),
                        label: 'アカウント',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school, color: Colors.purpleAccent),
                        label: 'ルーム',
                      ),
                    ],
                  ),
                );
              },
            )));
  }
}
