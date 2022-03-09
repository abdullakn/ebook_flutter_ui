import 'package:ebook/constants/colors.dart';
import 'package:ebook/pages/home/widgets/book_staggered_grid_view.dart';
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
      body: Column(
        children: [
          CustomBar(
              selected: tabIndex,
              callback: (int index) {
                setState(() {
                  print(index);
                  tabIndex = index;
                });
                pageController.jumpToPage(index);
              }),
          Expanded(
            child: BookStaggeredGridView(
                selected: tabIndex,
                callback: (int index) {
                  setState(() {
                    tabIndex = index;
                  });
                },
                pageController: pageController),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

 Widget  _buildBottomNavBar(){

   final bottoms=[
     Icons.home_outlined,
     Icons.analytics_outlined,
     Icons.keyboard_voice_outlined,
     Icons.bookmark_border_outlined,
     Icons.person_outline

   ];
   return SizedBox(
     width: MediaQuery.of(context).size.width,
     height: 56,
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
