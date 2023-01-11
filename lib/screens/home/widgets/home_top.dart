import 'package:animation_app/screens/home/widgets/category_view.dart';
import 'package:flutter/material.dart';
import '';

class HomeTop extends StatelessWidget {
  const HomeTop({Key? key, required this.containerGrow}) : super(key: key);

  final Animation<double> containerGrow;

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.31,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Bem-vindo, João",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 12),
            Container(
              alignment: Alignment.topRight,
              width: containerGrow.value * 120,
              height: containerGrow.value * 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/profile.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                width: containerGrow.value * 35,
                height: containerGrow.value * 35,
                margin: const EdgeInsets.only(left: 80),
                child: Center(
                  child: Text( "2",
                      style: TextStyle(
                          fontSize: containerGrow.value * 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                      ),
                  ),
                ),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 194, 1.0)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: const CategoryView(),
            )
          ],
        ),
      ),
    );
  }
}
