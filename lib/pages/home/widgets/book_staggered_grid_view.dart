import 'package:ebook/model/book.dart';
import 'package:ebook/pages/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  BookStaggeredGridView(
      {required this.selected,
      required this.callback,
      required this.pageController});
  final bookList = Book.generateBook();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback(index),
          children: [
            StaggeredGridView.countBuilder(
              staggeredTileBuilder: (index) =>
                  StaggeredTile.count(2, index.isEven ? 4 : 2),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 4,
              itemCount: bookList.length,
              itemBuilder: (_, index) => BookItem(book: bookList[index]),
            )
          ],
        ));
  }
}
