import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training_flutter_app/Pages/add_memo.dart';
import 'package:training_flutter_app/model/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { //返り値をWidgetで指定

    return MaterialApp(
      title: '呪術廻戦',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
          child: Scaffold(
            appBar: AppBar(
              //中央寄せにする
              centerTitle: true,
              title: Text('test'),
            ),
            //リストを増殖させるためのやつ
            body: Consumer<MainModel>(builder: (context, model, child) {
              return ListView.builder(
                itemCount: model.list.length,
                  itemBuilder:(BuildContext context, int index) {
                  return _listItem(model.list[index], context);
                  }
              );
            }
            ),

            bottomNavigationBar: BottomAppBar(
              color: Colors.blue,
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AddMemo()),
                  // );
                  final model = MainModel();
                  model.changeListText();
                  print("タップされました");
                },
              ),
            ),
          ),
      ),
    );
  }

  //リストが何かを指定している
  Widget _listItem(String title, BuildContext context){
    return Consumer <MainModel>(builder: (context, model, child){
      return Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey),),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddMemo()),
            );
            print("タップされました");
          },
        ),
      );
  });
  }
}
