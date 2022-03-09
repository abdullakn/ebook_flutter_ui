import 'package:ebook/constants/colors.dart';
import 'package:ebook/model/book.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      )
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios_new_outlined),
        color: kFont,
      ),
      actions: [
        IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz_outlined),color: kFont,)
      ],
    );
  }
}
