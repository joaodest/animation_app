import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ["Estudo", "Trabalho", "Casa"];

  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: _category > 0 ? selectBackward : null ,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          disabledColor: Colors.white30,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.white,
            letterSpacing: .4,
          ),
        ),
        IconButton(
          onPressed: _category < categories.length - 1 ? selectForward : null,
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          disabledColor: Colors.white30,
        ),
      ],
    );
  }
}
