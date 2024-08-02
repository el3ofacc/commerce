import 'package:e_commerce/core/constant/constantlist.dart';
import 'package:e_commerce/features/e_commerce/presentation/pages/login.dart';
import 'package:e_commerce/features/e_commerce/presentation/provider/changepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Mypageview extends StatelessWidget {
  Mypageview({super.key});
  //PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      width: double.infinity,
      child: Consumer<Changepage>(
        builder: (context, provider, child) {
          return PageView.builder(
              controller: provider.pageController,
              onPageChanged: (value) {
              
                provider.changeindex(
                  value,
                );
              },
              itemCount: constantlist.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(90),
                          bottomRight: Radius.circular(90)),
                      child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(constantlist[index].image)),
                    ),

                    //  ),
                  ),
                );
              });
        },
      ),
    );
  }
}
