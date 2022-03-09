import 'package:ebook/constants/colors.dart';
import 'package:ebook/model/book.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.only(left: 20),
        height: 250,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50),
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  color: Colors.grey[200]),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50)),
                child: Image.asset(
                  book.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 290,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                )),
            Positioned(
              left: 340,
              bottom: 20,
              child: Container(
                 padding: EdgeInsets.all(8),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: kFont
                 ),
                child: Row(
                  children: [
                    Icon(Icons.play_arrow_outlined,color: Colors.white,size: 25,),
                    Text("Audio Book",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ))
          ],
        ));
  }
}
