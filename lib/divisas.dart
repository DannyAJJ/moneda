import "package:flutter/material.dart";
import 'package:moneda/main.dart';
import 'globales.dart' as globales;

class Menu extends StatelessWidget {
  const Menu({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
            radiofalso(context, 'Dolar Usd', 0),
            radiofalso(context, 'Euro', 1),
            radiofalso(context, 'Yen', 2),
            radiofalso(context, 'Libra Estr', 3),
            radiofalso(context, 'Yuan', 4),
            radiofalso(context, 'Bolivar', 5),
            radiofalso(context, 'Peso Arg', 6),
            radiofalso(context, 'Doge', 7)
            ],
          );
  }}
  Widget radiofalso(BuildContext context, String texto, int index){
   return OutlinedButton(
    onPressed: (){
      globales.moneda = index;
      convertir(valor1, valor2, globales.textedid, globales.textleer);
      switch(index){
        case 0:
         globales.iconoactual = Icons.attach_money;
        break;
        case 1:
         globales.iconoactual = Icons.euro;
        break;
        case 2:
         globales.iconoactual = Icons.currency_yen;
        break;
        case 3:
         globales.iconoactual = Icons.currency_lira;
        break;
        case 4:
         globales.iconoactual = Icons.currency_yuan;
        break;
        case 5:
         globales.iconoactual = Icons.cancel;
        break;
        case 6:
         globales.iconoactual = Icons.attach_money;
        break;
        case 7:
         globales.iconoactual = Icons.pets;
        break;
      }
  },style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width, 40)),
    shape: MaterialStateProperty.all( RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    side: MaterialStatePropertyAll(BorderSide(color: (globales.moneda==index) ? Colors.blue : Colors.white))
    ),
   child: Text(texto, 
    style: TextStyle(
      color: (globales.moneda==index) ? Colors.blue : Colors.white
    ),
   ),
   );
  }