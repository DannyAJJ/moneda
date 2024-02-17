import "package:flutter/material.dart";

class Menu extends StatelessWidget {
  const Menu({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[800],
                child: const Text('data',style: TextStyle(fontSize: 20),),
                
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[700],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[600],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[500],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[400],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[300],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              Container(
                
                width: MediaQuery.of(context).size.width,
                color: Colors.deepPurple[200],
                child: const Text('data',style: TextStyle(fontSize: 20),),
              ),
              
            ],
          );
  }}