import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'globales.dart' as globales;
import 'botonpop.dart' as popsito;
double resp= 0;
String? valor1="Dolar", valor2="Bolivar";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moneda',
      theme: ThemeData(
        fontFamily: "Roboto",
        colorScheme: ColorScheme.fromSeed( seedColor: const Color.fromRGBO(21, 13, 179, 1)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      
      body: Center(
        child:
        Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("imagenes/doge2.jpg",width: MediaQuery.of(context).size.width),
                Row(
                  
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 0, 10, 50),
                      child: const popsito.Botondivisa(),
                    ),
                    
                    Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 70),
                    
                  child: const Text(
                    "Monto a Convertir",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(230, 224, 224, 1),
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  ),
                  ],
                ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(85,0,0,40),
                    child: TextField(
                controller: globales.textleer,
                canRequestFocus: false,
                
                onChanged:(value) {
                  convertir(valor1, valor2, globales.textedid, globales.textleer);
                },
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                decoration:  InputDecoration(
                prefixIcon:  Icon(globales.iconoactual),
                border: InputBorder.none, 
                hintText: '0',
                hintStyle: const TextStyle(color: Colors.white),
                prefixIconColor: Colors.white,
                ),
              ),
              ),
              ],
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container( color: const Color.fromRGBO(152, 120, 186, 1),child:
                  GridView.count(crossAxisCount: 2
                  , childAspectRatio: 2.7,
                  children: [
                   
              disp(context, Icons.attach_money, 'Dolar Uds', globales.dolar),
              disp(context, Icons.euro, 'Euro', globales.euro),
              disp(context, Icons.currency_yen, 'Yen', globales.yen),
              disp(context, Icons.currency_pound, 'Libra', globales.libra),
              disp(context, Icons.currency_yuan, 'Yuan', globales.yuan),
              disp(context, Icons.cancel, 'Bolivar', globales.bolivar),
              disp(context, Icons.attach_money, 'Peso Arg', globales.arg),
              disp(context, Icons.pets, 'Dogecoin', globales.doge),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              disp(context, Icons.cancel, 'otro', globales.otro),
              
                  ],)
                  ),
                  Container(
                        width: MediaQuery.of(context).size.width*0.6,
                        height:MediaQuery.of(context).size.height*0.25,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:const Color.fromRGBO(41, 40, 40, 0.624),
                        ),
                        
                        child: 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botonpad(context, '7', null, globales.textleer),
                      botonpad(context, '8', null, globales.textleer),
                      botonpad(context, '9', null, globales.textleer),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botonpad(context, '4', null, globales.textleer),
                      botonpad(context, '5', null, globales.textleer),
                      botonpad(context, '6', null, globales.textleer),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botonpad(context, '1', null, globales.textleer),
                      botonpad(context, '2', null, globales.textleer),
                      botonpad(context, '3', null, globales.textleer),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      botonpad(context, null, Icons.backspace_outlined, globales.textleer),
                      botonpad(context, '0', null, globales.textleer),
                      botonpad(context, '.', null,globales.textleer),
                    ],
                  )
                ],
              ),
                      ),
                      
                ],
              ),
            )
              
              /*
              child: SizedBox(
                width: MediaQuery.of(context).size.width*0.8,
                child: Coslumn(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
              
                  SizedBox(height: MediaQuery.of(context).size.height*0.025,),
              
                  TextField(
                  controller: globales.textedid,
                  mouseCursor: SystemMouseCursors.basic,
                  canRequestFocus: false,
                  readOnly: true,
                  decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.attach_money_outlined),
                  //suffixIcon: Icon(Icons.clear),
                  labelText: 'Cambio de Divisa.',
                  hintText: 'Este campo es automatico.',
                  helperText: 'seleccione tipo de divisa objetivo:',
                  border: OutlineInputBorder(),
                  ),
                ),
              
                DropdownButtonFormField(
                  value: "Bolivar",
                  decoration: const InputDecoration(border: OutlineInputBorder()) ,
                  items: moneda.map((e2) {
                    return DropdownMenuItem(
                      value: e2,
                      child: Text(e2),
                      );
                  }).toList(),
                  onChanged: (value) {
                    valor2=value;
                    convertir(valor1, valor2, globales.textedid, globales.textleer);
                  },),
                        
              ],
              
                        ),
                        
                      ),*/
            
        

          ],
        )
        
        
      ),
      /*floatingActionButton:  FloatingActionButton(
        onPressed: () {
          convertir(valor1, valor2, globales.textedid, globales.textleer);
        },
        tooltip: 'Convertir',
        child:  const Icon(Icons.balance_outlined),
      ),*/
    );
  }
}

convertir (String? valor1,String? valor2,TextEditingController editar, TextEditingController leer){
  double control=0;
  double? lectura;
  try {
    lectura= double.parse(leer.text);
  }
  catch(e){
    const AlertDialog(title: Text("Caracteres no numericos ingresados"),);
    leer.text= "";
    editar.text= "";
    return;
  }
    switch (globales.moneda) {
      case 0:
        control = lectura;
      break;
      case 1:
        control= lectura/0.93;
      break;
      case 2:
        control= lectura/150.19;
      break;
      case 3:
        control= lectura/0.79;
      break;
      case 4:
        control= lectura/7.21;
      break;
      case 5:
        control= lectura/37.52;
      break;
      case 6:
        control= lectura/834.41;
      break;
      case 7:
        control= lectura/11.83;
      break;
  }
  globales.tabulado=(((control*100).roundToDouble())/100).toString();

  globales.dolar.text = globales.tabulado;
  globales.euro.text = ((((control*0.93)*100).roundToDouble())/100).toString();
  globales.yen.text = ((((control*150.19)*100).roundToDouble())/100).toString();
  globales.libra.text = ((((control*0.79)*100).roundToDouble())/100).toString();
  globales.yuan.text = ((((control*7.21)*100).roundToDouble())/100).toString();
  globales.bolivar.text = ((((control*37.52)*100).roundToDouble())/100).toString();
  globales.arg.text = ((((control*834.41)*100).roundToDouble())/100).toString();
  globales.doge.text = ((((control*11.83)*100).roundToDouble())/100).toString();

}
/*bool comas (bool coma){
  if (coma) {return false;}else {return true;}
}*/
boton (String presionado, TextEditingController leer){
 switch (presionado){
  case 'b':
    // ignore: unnecessary_null_comparison
    if (leer.text.characters.last=='.'){globales.coma=false;}
    if (leer.text.length==1){leer.text= '0';}else{
    leer.text = leer.text.characters.getRange(0,leer.text.length-1).toString();
    }
  break;
  case '.':
    if(leer.text!=''){
      globales.coma= true;
      leer.text = leer.text + presionado ;
    }
    
  break;
  default: 
    if (leer.text=='0'){leer.text=presionado;}else{
     leer.text = leer.text + presionado ;
    }
    
  break;
 }
}

Widget disp(BuildContext context,IconData icono, String? textod, TextEditingController control ){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.02),
  width: MediaQuery.of(context).size.width,
  color: Colors.white,
  child:  Column( children: [
    Row(children: [
  Icon(icono, size: 35),
  Text(textod.toString() ,style: const TextStyle(fontSize: 25))
  ],),
  TextField(
    controller:control,
    showCursor: false,
    mouseCursor: SystemMouseCursors.basic,
    canRequestFocus: false,
    decoration: const InputDecoration(
      hintText: '0',
      border: InputBorder.none
    ),
    style: const TextStyle(fontSize: 25,),
  ),
  /*Text(control.text,style: const TextStyle(fontSize: 25),)*/],) );
              
}

Widget botonpad(BuildContext context, String? value,IconData? icon, TextEditingController leer) {
    return ElevatedButton(onPressed: (){

      if(value!=null){
        if (value== '.' && globales.coma == false){boton(value, leer);globales.coma=true;}
        if (value!= '.'){boton(value, leer);}
      }else{
          boton('b', leer);
      }
      convertir(valor1, valor2, globales.textedid, globales.textleer);

    }, 
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(68, 71, 74, 0.616)),
      side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(color: Color.fromRGBO(41, 40, 40, 1))),
      //overlayColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(97, 100, 103, 1)),
      fixedSize: MaterialStateProperty.resolveWith((states) => 
        Size(
          (MediaQuery.of(context).size.width/6),
          (MediaQuery.of(context).size.height/2.5/7)
          )),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10))
        ),
      
      ),
      child: value != null ? Text(value.toString(),
      style: const TextStyle(
          fontSize: 26,
          color: Color.fromRGBO(255, 238, 226, 1),
          fontFamily: "Roboto",
          fontWeight: FontWeight.w700
      )): Icon(icon,color: const Color.fromRGBO(255, 238, 226, 1),)
    );
  }
  medir(){
    IconData icono= globales.iconoactual;
    return icono;
  }
  Widget salida(BuildContext context){
    return ElevatedButton(
      onPressed: (){

      },
      style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(68, 71, 74, 0.616)),
      side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(color: Color.fromRGBO(41, 40, 40, 1))),
      fixedSize: MaterialStateProperty.resolveWith((states) => 
        Size(
          (MediaQuery.of(context).size.width/6),
          (MediaQuery.of(context).size.height/2.5/7)
          )),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10))
        ),
      
      ),
      child:
       Row(
        children: [
         Icon(Icons.rate_review),
         Text('Desplegar Teclado')
        ],)
        );
  }
 