import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '/models/book.dart';

class BookListViewModel extends ChangeNotifier {
  final List<Book> _books = [];
  List<Book> get books => _books;
  Future<void> getBooks(String url, String apiKey) async {
    final headers = {'X-API-Key': apiKey};
    final response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {      
      final List<dynamic> booksJson = jsonDecode(utf8.decode(response.bodyBytes));
      final books = booksJson.map((bookJson) => Book.fromJson(bookJson)).toList();
      if (kDebugMode) {
        print('Libros:');
        for (final book in books) {
          print('- $book');
        }
      }
    } else {
      if (kDebugMode) {
        print('Error al obtener libros: ${response.reasonPhrase}');
      }
    }
  }

  // Método para agregar un libro a la lista
  void addBook(Book book) {
    // Lógica para agregar el libro a la lista _books
    // Utiliza notifyListeners() para notificar a las vistas que los datos han sido actualizados
  }

}
