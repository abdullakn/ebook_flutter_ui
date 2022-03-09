import 'dart:ui';

import 'package:ebook/constants/colors.dart';
import 'package:ebook/model/book.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class BookDetails extends StatelessWidget {
  final Book book;
  const BookDetails({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              book.type.toUpperCase(),
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              book.name,
              style: const TextStyle(fontSize: 24, color: kFont, height: 1.2),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: 'Published From ',
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(text: book.publisher,style: TextStyle(
                      color: kFont,fontWeight: FontWeight.w500
                    ))
                  ]),
                ),
                Text(DateFormat.yMMMd().format(book.date),
                style: TextStyle(color: Colors.grey),)
              ],
            )
          ],
        ));
  }
}
