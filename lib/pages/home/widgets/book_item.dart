import 'package:ebook/model/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;
  const BookItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height as double,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(book.imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
