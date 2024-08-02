import 'package:e_commerce/core/constant/constantlist.dart';
import 'package:e_commerce/features/e_commerce/domain/usecases/navigation.dart';
import 'package:e_commerce/features/e_commerce/presentation/pages/login.dart';
import 'package:e_commerce/features/e_commerce/presentation/provider/changepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Changepage>(
      builder: (context, provider, child) {
        return ElevatedButton(
            onPressed: () {
              if (constantlist.length - 1 == provider.oldindex) {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => Login()));
                Navigation().navigaterep(()=>Login(), context);
              }
              provider.increasindex();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Text(
                "continue",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ));
      },
    );
  }
}
