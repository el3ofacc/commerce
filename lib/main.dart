import 'package:e_commerce/core/utils/apptheme.dart';
import 'package:e_commerce/features/e_commerce/presentation/pages/welcomscreen.dart';
import 'package:e_commerce/features/e_commerce/presentation/provider/changepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
    ChangeNotifierProvider(create: (context)=>Changepage())
      ],
    child: MaterialApp( 
      debugShowCheckedModeBanner: false,
      theme: Apptheme().mythem,
      home: Welcomscreen(),
    ),);
  }
}