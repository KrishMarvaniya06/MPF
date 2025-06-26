import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String imageUrl =
      'https://images.unsplash.com/photo-1547721064-da6cfb341d50'; // Replace with your own URL

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cached Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cached Network Image'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

