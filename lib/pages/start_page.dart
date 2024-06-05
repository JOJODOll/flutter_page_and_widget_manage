import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_1/A_provider/page_state_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class statr_page extends StatefulWidget {
  const statr_page({super.key});

  @override
  State<statr_page> createState() => _statr_pageState();
}

class _statr_pageState extends State<statr_page> {
  @override
  void initState() {
    super.initState();
    // หน่วงเวลา 2 วินาที
    Future.delayed(Duration(milliseconds: 2000), () {
      // หลังจาก 2 วินาที เปลี่ยนไปยังหน้า Page2
      final page_manages =
          Provider.of<page_manage_provider>(context, listen: false);

      page_manages.update_page(1);
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          alignment: AlignmentDirectional.bottomCenter,
          height: 300,
            child: Center(
                child: Text("YOUR LOGO",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: const Color.fromARGB(255, 0, 0, 0)),),)),
        CircularProgressIndicator(
          strokeWidth: 50
//strokeWidth :BorderSide.strokeAlignOutside

        ),
      ]),
    );
  }
}
