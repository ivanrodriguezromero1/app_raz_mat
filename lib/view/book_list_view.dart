import 'package:flutter/material.dart';
import '/viewmodels/book_list_view_model.dart';

class BookListView extends StatefulWidget {
  const BookListView({super.key});
  @override
  BookListViewState createState() => BookListViewState();
}

class BookListViewState extends State<BookListView> {
  BookListViewModel viewModel = BookListViewModel();
  @override
  void initState() {
    super.initState();
    viewModel.getBooks('https://api-go2.onrender.com/books', 'my-secret-api-key');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de libros'),
      ),
      body: ListView.builder(
        itemCount: viewModel.books.length,
        itemBuilder: (BuildContext context, int index) {
          final book = viewModel.books[index];
          return ListTile(
            title: Text(book.title),
            subtitle: Text(book.author),
          );
        },
      ),
    );
  }
}
