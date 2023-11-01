import 'package:flutter/material.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imagepath = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvFBa3G11OUBYADP7ouSBgwiiRzSYorF4dfg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfwaT9bZKzAEkhUSKlUqA7FPjJasQAgU1jlA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGKhofZ3n8nhoDYNom4kxWlguJKA17QQRuogcsF-AN6YDZp96fD7wQD87AfzqPZGtFAsE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFfoTPVYULc4Cqs-amxcf0amgK_DT85mFq8bxm9ci8J4mcuTW1gwVkGfyp2G9oMuoCbmg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRpVWOwLFdNtuHb4rlYPu9rGpeKw3X6mEkZQ&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reorderable Gridview......"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ReorderableGridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            onReorder: ((oldIndex, newIndex) {
              String path = imagepath.removeAt(oldIndex);
              imagepath.insert(newIndex, path);
              setState(() {});
            }),
            children: imagepath
                .map((String path) => Card(
                      key: ValueKey(path),
                      child: Image.network(path,fit:  BoxFit.cover,),
                      
                    
                    ))
                .toList()),
      ),
    );
  }
}
