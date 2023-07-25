import 'package:flutter/material.dart';
import 'package:flutter_star_menu/constants/colors.dart';
import 'package:star_menu/star_menu.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    List<Widget> otherEntries = [
      FloatingActionButton(
        onPressed: null,
        backgroundColor: MyColors.myIconColor,
        child: const Icon(Icons.add_call),
      ),
      FloatingActionButton(
        onPressed: null,
        backgroundColor: MyColors.myIconColor,
        child: const Icon(Icons.adb),
      ),
      FloatingActionButton(
        onPressed: null,
        backgroundColor: MyColors.myIconColor,
        child: const Icon(Icons.home),
      ),
      FloatingActionButton(
        onPressed: null,
        backgroundColor: MyColors.myIconColor,
        child: const Icon(Icons.delete),
      ),
      FloatingActionButton(
        onPressed: null,
        backgroundColor: MyColors.myIconColor,
        child: const Icon(Icons.get_app),
      )
    ];

    // bottom left menu entries

    return Scaffold(
      resizeToAvoidBottomInset: false,
     
      body: Column(
        children: [
          /// add a menu to the background

          _buildHeadContainer(height),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: StarMenu(
                params: StarMenuParameters.arc(
                  context,
                  ArcType.semiUp,
                  radiusX: 100,
                  radiusY: 100,
                ),
                items: otherEntries,
                child: FloatingActionButton(
                  onPressed: null,
                  backgroundColor: MyColors.myBottomNavColor,
                  child: Icon(Icons.home_work_outlined,
                      color: MyColors.myIconColor),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      // floatingActionButton: Align(
      //   alignment: Alignment.bottomCenter,
      //   child:
      // ),
    );
  }
}

class IconMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconMenu({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 6),
        Text(text),
      ],
    );
  }
}

Widget _buildHeadContainer(double height) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(30.0),
      bottomRight: Radius.circular(30.0),
    ),
    child: InkWell(
      onTap: () {},
      child: Container(
        color: MyColors.myWhiteColor,
        child: Image.asset(
          'images/spring.jpg',
          height: height * 0.4,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
  );
}
