import 'package:e_commerce/core/constant/constantlist.dart';
import 'package:e_commerce/features/e_commerce/presentation/provider/changepage.dart';
import 'package:e_commerce/features/e_commerce/presentation/widgets/welcomescreen/mybutton.dart';
import 'package:e_commerce/features/e_commerce/presentation/widgets/welcomescreen/mycontroller.dart';
import 'package:e_commerce/features/e_commerce/presentation/widgets/welcomescreen/mypageview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Welcomscreen extends StatelessWidget {
  const Welcomscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Mypageview(),
          SizedBox(
            height: 50,
          ),
          Text(
            constantlist[1].title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              constantlist[2].body,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Consumer<Changepage>(
            builder: (context, provider, child) {
              return Mycontroller();
            },
          ),
          SizedBox(height: 20,),
          Mybutton()
        ],
      ),
    );
  }
}
