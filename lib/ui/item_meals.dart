import 'package:flutter/material.dart';

Widget itemMeals(String? idMeals, String? nameMeals, String? urlImage){
  return Padding(padding: const EdgeInsets.all(8),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Hero(
            child: Image.network(urlImage!,
                height: 230, width: double.infinity, fit: BoxFit.cover),
            tag: idMeals!,
          ),
        ),
        Positioned( left: 10, bottom: 15,
            child: Text(
              nameMeals!,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                shadows: [
                  Shadow(
                    offset: Offset(5,4),
                    blurRadius: 6,
                    color: Colors.black,
                  )
                ]
              ),
            ),
        ),
      ]
    ),
  );
}