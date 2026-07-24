import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//Este widget é a raiz da sua aplicação.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
      ),
      home: Scaffold(
        appBar:
        AppBar(
          backgroundColor:  Color(0xFF146C43),  foregroundColor: Colors.white,  elevation: 0, centerTitle: false, 
          leading: Icon(Icons.arrow_back, color: Colors.white, size: 24,),
          title: Text('Perfil', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
          actions: [Icon(Icons.menu, color: Colors.white,size: 24,),
           Padding(padding: EdgeInsetsGeometry.only(right: 16))],
          ),
        
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child:
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: Color(0xFF146C43), size: 48,),
             
            ),
            SizedBox(height: 14),
           Text('Ana Souza', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
           ),
            SizedBox(height: 4),
           Text('Desenvolvedora de Flutter', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey.shade500),
           ),
            
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 92,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.white,
                ),
            child: Column(
              children: [
                Icon( Icons.message, color: Color(0xFF146C43), size: 24,),
                SizedBox(height: 4),
                Text('128', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 4),
                Text('Posts', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey.shade500),),
              ],
            ),
            ),
            SizedBox(width: 12),
            Container(
                width: 92,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.white,
                ),
            child: Column(
              children: [
                Icon( Icons.group, color: Color(0xFF146C43), size: 24,),
                SizedBox(height: 4),
                Text('389', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 4),
                Text('Seguidores', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey.shade500),),
              ],
            ),
            ),
            SizedBox(width: 12),
            Container(
                width: 92,
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                 border: Border.all(color: Colors.grey.shade300),
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.white,
                ),
            child: Column(
              children: [
                Icon( Icons.person_add, color: Color(0xFF146C43), size: 26,),
                SizedBox(height: 4),
                Text('56', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold, color: Colors.black),),
                SizedBox(height: 4),
                Text('Seguindo', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey.shade500),),
              ],
            ),
            )
            ],
          )  
            
            ],
          


          ),

        ),

       
      )  
    )
    );
  }
}
