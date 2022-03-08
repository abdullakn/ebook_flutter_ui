import 'package:ebook/constants/colors.dart';
import 'package:ebook/pages/home/widgets/custom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tabIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomBar(
                selected: tabIndex,
                callback: (int index) {
                  setState(() {
                    tabIndex = index;
                  });
                  pageController.jumpToPage(index);
                })
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu_rounded),
        color: kFont,
      ),
      title: Text(
        "E Book",
        style:
            TextStyle(color: kFont, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_outlined,
              color: kFont,
            ))
      ],
      centerTitle: true,
    );
  }
}
