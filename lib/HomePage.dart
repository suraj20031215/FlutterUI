import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: const Text('My Store'),
     ),

     body:
 SingleChildScrollView(
   child: Column(
     children:[ Container(
        margin: const EdgeInsets.only(right: 10,left: 10),
        padding: const EdgeInsets.all(10),
        height: 59,
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), ),
                focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintText: "Search here...",
                prefixIcon: const Icon(Icons.search_rounded)
      )
        )
        )
     )
   ],
),

   ),

   );
  }

}