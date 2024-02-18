import "package:flutter/material.dart";
import 'package:popover/popover.dart';
import 'globales.dart' as globales;
import 'divisas.dart' as principal;

class Botondivisa extends StatelessWidget {
  const Botondivisa({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() { showPopover(context: context, bodyBuilder: (context) => const principal.Menu(),
      width: 200,
      height: 256,
      backgroundColor: const Color.fromRGBO(69, 39, 160, 1),
      direction: PopoverDirection.bottom
      );
        
      },
      child: Container(
        width: MediaQuery.of(context).size.width/9,
        height: MediaQuery.of(context).size.height/18,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(224, 224, 224, 0.389)
        ), 
        child: Icon(globales.iconoactual)),
    );
  }
}