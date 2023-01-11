import 'package:animation_app/screens/home/widgets/list_data.dart';
import 'package:flutter/material.dart';

class AnimatedListView extends StatelessWidget {
  AnimatedListView({Key? key, required this.listSlidePosition}) : super(key: key);

  final Animation<EdgeInsets> listSlidePosition;
  final EdgeInsets margin = EdgeInsets.all(8);


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: "Estudar Flutter",
          subtitle: "Curso da Startto.dev",
          image: AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 1,
        ),
        ListData(
          title: "Estudo autônomo",
          subtitle: "Discord do Flutterando",
          image: AssetImage("images/profile.jpg"),
          margin: listSlidePosition.value * 0,
        ),
      ],
    );
  }
}
