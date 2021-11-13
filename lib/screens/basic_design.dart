import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        // Imagen
        Image(image: AssetImage("assets/stock.jpg")),
        // Titulo
        Title(),

        //Button Section
        ButtonSection(),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              "Esto es un texto de ejemplo como descripción de la imagen. Esto es un texto de ejemplo como descripción de la imagen. Esto es un texto de ejemplo como descripción de la imagen. Esto es un texto de ejemplo como descripción de la imagen. Esto es un texto de ejemplo como descripción de la imagen. Esto es un texto de ejemplo como descripción de la imagen. "),
        )
      ],
    ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomBottom(icon: Icons.call, texto: "CALL"),
          CustomBottom(icon: Icons.navigation, texto: "ROUTE"),
          CustomBottom(icon: Icons.share, texto: "SHARE"),
        ],
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomBottom({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
        ),
        Text(
          this.texto,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text("41")
        ],
      ),
    );
  }
}
