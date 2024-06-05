import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sub3Page2 extends StatefulWidget {
  const Sub3Page2({super.key});

  @override
  State<Sub3Page2> createState() => _SubPage2State();
}

class _SubPage2State extends State<Sub3Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(color: const Color.fromARGB(255, 23, 63, 133),
        child: Container(child:Center(child: Text("sub3",
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