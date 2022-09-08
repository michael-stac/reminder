import 'package:flutter/material.dart';

class Kprompt extends StatelessWidget {
  const Kprompt({Key? key, required this.description, this.image,})
      : super(key: key);

  final Widget? image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 200,
      width: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 1,
            offset: const Offset(0, 3),
          ),
        ],
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            margin: const EdgeInsets.only(bottom: 20),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: image,
            ),
          ),
          SizedBox(height: 21,),
          Text(
            description,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}