import 'Screens/shopping_item_widget.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'model/shopping_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'AnimatedList';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
    ),
    home: adminHome(title: title),
  );
}

class adminHome extends StatefulWidget {
  final String title;

  const adminHome({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<adminHome> {
  final key = GlobalKey<AnimatedListState>();
  final items = List.from(Data.cafeList);

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text(widget.title ?? ''),
    ),
    body: Column(
      children: [
        Expanded(
          child: AnimatedList(
            key: key,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) =>
                buildItem(items[index], index, animation),
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: buildInsertButton(),
        ),
      ],
    ),
  );

  Widget buildItem(item, int index, Animation<double> animation) =>
      ShoppingItemWidget(
        item: item,
        animation: animation,
        onClicked: () => removeItem(index),
      );

  Widget buildInsertButton() => RaisedButton(
    child: Text(
      'Insert New Cafe',
      style: TextStyle(fontSize: 20),
    ),
    color: Color(0xffE5EFFF),
    onPressed: () => insertItem(3, Data.cafeList.last),
  );

  void insertItem(int index, ShoppingItem item) {
    items.insert(index, item);
    key.currentState.insertItem(index);
  }

  void removeItem(int index) {
    final item = items.removeAt(index);

    key.currentState.removeItem(
      index,
          (context, animation) => buildItem(item, index, animation),
    );
  }
}

