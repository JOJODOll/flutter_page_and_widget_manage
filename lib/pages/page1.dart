import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_1/A_provider/page_state_provider.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    final page_manages =
        Provider.of<page_manage_provider>(context, listen: false);

    return Container(
        child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.amber,
              child: Column(
                children: [
                  Expanded(child: Container()),
                  InkWell(
                    onTap: () {
                      page_manages.update_page(2);
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.black38,
                      height: 100,
                      // width: 100,
                      child: Center(
                        child: Text(
                          "GO PAGE2",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
            ))
      ],
    ));
  }
}
