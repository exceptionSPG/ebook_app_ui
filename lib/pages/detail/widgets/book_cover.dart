import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  final Book book;
  const BookCover(this.book, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Book Cover'),
    );
  }
}