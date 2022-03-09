import 'dart:html';

import 'package:ebook/model/book.dart';
import 'package:ebook/pages/details/detail.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
          return DetailPage(book: book);
        }));
      },
      child: Container(
        height: book.height as double,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(book.imageUrl), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
