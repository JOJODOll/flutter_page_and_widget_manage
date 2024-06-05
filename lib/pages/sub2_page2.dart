import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sub2Page2 extends StatefulWidget {
  const Sub2Page2({super.key});

  @override
  State<Sub2Page2> createState() => _SubPage2State();
}

class _SubPage2State extends State<Sub2Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent,
        child: Container(child:Center(child: Text("sub2",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),),)),

    );
  }
}