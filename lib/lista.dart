import 'package:flutter/material.dart';

class Listaview extends StatelessWidget {
  const Listaview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context,int index){
        return ListTile(
          title: const Text('flutter Mapp'),
          tileColor: Colors.amber,
          onTap: () {
            
          },
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.menu),
        );
      },
      separatorBuilder: (BuildContext context,int index) =>Divider(color: Colors.white,),
      itemCount: 7);
  }
}