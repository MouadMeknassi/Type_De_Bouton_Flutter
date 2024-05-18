import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text('Types de Boutons'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Button textuel
              TextButton(
                onPressed: (){
                  print("Bouton Textuel Pressed");
                },
                child:Text("Bouton Textuel"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor:Colors.grey[200],
                  textStyle: TextStyle(fontWeight:  FontWeight.bold),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))

                ), 
              ),
              SizedBox(height: 10),
              //Button élevé (Elevated Button)
              ElevatedButton(
                onPressed: () {
                  print("Bouton élévé pressé");
                },
                child: const Text('Click me'),
                style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, 
                backgroundColor: Colors.blue, // Text color.
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding.
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Border radius.
                ),
              ),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  print("Bouton de Text plat pressé ");
                },
                child: const Text('Bouton de texte plat'),
                style: OutlinedButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.black,
                  ),
                  foregroundColor: Colors.green, 
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(color: Colors.red),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                )
              ),
              SizedBox(height: 10),
              //Bouton d'icone
              IconButton(
                iconSize: 50,
                icon: Icon(Icons.monitor_sharp),
                onPressed: () {
                  // Handle button press here.
                  print("Button d'Icone Pressé");
                },
                color: Colors.red,
              ),
              SizedBox(height: 10),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Material Button'),
                padding: EdgeInsets.all(20),
                onPressed: () {
                  print("MaterialButton Pressé");
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
    ),
    );
  }
}