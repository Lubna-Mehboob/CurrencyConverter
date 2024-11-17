import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? conWidth = 350;
  final String conLabelText;
  final TextEditingController containerController;
  const CustomContainer(
      {super.key,
      required this.conLabelText,
      required this.containerController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(left: 15),
      height: 50,
      width: conWidth,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 157, 122, 240),
            Color.fromARGB(255, 86, 13, 155),
          ],
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: containerController,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: conLabelText,
            labelStyle: const TextStyle(color: Colors.white, fontSize: 14)),
        textAlign: TextAlign.center,
        cursorColor: Colors.white,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
