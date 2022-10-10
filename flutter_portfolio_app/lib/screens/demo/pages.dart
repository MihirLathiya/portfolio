import 'package:flutter/material.dart';
import 'package:flutter_portfolio_app/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 25.0);
  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionListener =
      ItemPositionsListener.create();
  void _scroll(int i) {
    _itemScrollController.scrollTo(index: i, duration: Duration(seconds: 1));
  }

  Widget sectionWidget(int i) {
    if (i == 0) {
      return ClassA();
    } else if (i == 1) {
      return ClassB();
    } else if (i == 2) {
      return ClassC();
    } else if (i == 3) {
      return ClassD();
    } else if (i == 4) {
      return ClassE();
    } else {
      return Container();
    }
  }

  List name = ['A', 'B', 'C', 'D', 'E'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  name.length,
                  (index) => InkWell(
                    onTap: () {
                      _scroll(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '${name[index]}',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: RawScrollbar(
                controller: _scrollController,
                thumbColor: myPrimaryColor,
                thickness: 5.0,
                child: ScrollablePositionedList.builder(
                  itemScrollController: _itemScrollController,
                  itemPositionsListener: _itemPositionListener,
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    return sectionWidget(index);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClassA extends StatelessWidget {
  const ClassA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.red,
    );
  }
}

class ClassB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.yellow,
    );
  }
}

class ClassC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.grey,
    );
  }
}

class ClassD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.blueAccent,
    );
  }
}

class ClassE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.pink,
    );
  }
}
