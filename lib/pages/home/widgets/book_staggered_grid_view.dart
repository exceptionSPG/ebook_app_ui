import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'book_item.dart';

class BookStaggeredGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  BookStaggeredGridView(
      {required this.selected,
      required this.pageController,
      required this.callback});
  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            itemCount: bookList.length,
            mainAxisSpacing: 16,
            itemBuilder: (_, index) => BookItem(bookList[index]),
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
          ),
        ],
      ),
    );
  }
}
