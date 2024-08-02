import 'package:e_commerce/core/constant/constantlist.dart';
import 'package:e_commerce/features/e_commerce/presentation/provider/changepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mycontroller extends StatelessWidget {
  Mycontroller({
    super.key,
     
  });
 

  @override
  Widget build(BuildContext context) {
    return Consumer<Changepage>(
      builder: (context, provider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                constantlist.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        height: 6,
                        width: provider.oldindex==index?20:5,
                        color: provider.oldindex == index
                            ? Colors.blue
                            : Colors.white,
                      ),
                    ))
          ],
        );
      },
    );
  }
}


 