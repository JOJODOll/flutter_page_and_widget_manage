import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sub1Page2 extends StatefulWidget {
  const Sub1Page2({super.key});

  @override
  State<Sub1Page2> createState() => _SubPage2State();
}

class _SubPage2State extends State<Sub1Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 67, 98, 151),
    child: Container(child:Center(child: Text("sub1",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),),),
                      ),);
    
    
  }
}