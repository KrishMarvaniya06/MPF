import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: PaginationDemo(),
  ));
}

class PaginationDemo extends StatefulWidget {
  @override
  _PaginationDemoState createState() => _PaginationDemoState();
}

class _PaginationDemoState extends State<PaginationDemo> {
  List<dynamic> items = [];
  int page = 1;
  bool isLoading = false;
  bool hasMore = true;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    fetchData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent &&
          !isLoading &&
          hasMore) {
        fetchData();
      }
    });
  }

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts?_page=$page&_limit=10");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List newData = jsonDecode(response.body);

      setState(() {
        page++;
        items.addAll(newData);
        if (newData.length < 10) {
          hasMore = false;
        }
      });
    } else {
      throw Exception("Failed to load data");
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lazy Loading Pagination")),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: items.length + (hasMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < items.length) {
            return ListTile(
              leading: CircleAvatar(child: Text(items[index]['id'].toString())),
              title: Text(items[index]['title']),
              subtitle: Text(items[index]['body']),
            );
          } else {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
