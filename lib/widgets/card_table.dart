import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            icon: Icons.view_module,
            text: "General",
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.train,
            text: "Transport",
            color: Colors.pinkAccent,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.shop,
            text: "Shopping",
            color: Colors.purple,
          ),
          _SingleCard(
            icon: Icons.cloud,
            text: "Bill",
            color: Colors.purpleAccent,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
              icon: Icons.movie,
              text: "Entertainment",
              color: Colors.deepPurple),
          _SingleCard(
              icon: Icons.food_bank_outlined,
              text: "Grocery",
              color: Colors.pinkAccent),
        ]),
        TableRow(children: [
          _SingleCard(
            icon: Icons.view_module,
            text: "General",
            color: Colors.blue,
          ),
          _SingleCard(
            icon: Icons.train,
            text: "Transport",
            color: Colors.pinkAccent,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(
            this.icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(height: 30),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 1),
                borderRadius: BorderRadius.circular(20)),
            child: child,
          ),
        ),
      ),
    );
  }
}
