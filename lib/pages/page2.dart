import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:test_1/A_provider/BOX_provider.dart';
import 'package:test_1/A_provider/page_state_provider.dart';
import 'package:test_1/pages/sub1_page2.dart';
import 'package:test_1/pages/sub2_page2.dart';
import 'package:test_1/pages/sub3_page2.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Widget build(BuildContext context) {
    List<Widget> PAGES = [Sub1Page2(), Sub2Page2(),Sub3Page2()];
    final page_manages =
        Provider.of<page_manage_provider>(context, listen: false);

            final BOX_manage =
        Provider.of<BOX_state_provider>(context, listen: false);
    return Container(
      child: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.black26,
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      page_manages.update_page(1);
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.amber,
                      height: 50,
                      width: 150,
                      child: Center(
                        child: Text("GO to 1"),
                      ),
                    )),
                Expanded(child: Container(

                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(children: [
                    InkWell(
                      onTap: () {
                        BOX_manage.update_page(0);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Center(child: Text("to sub1",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),),),
                      
                                        ),
                    ),    InkWell(
                      onTap: () {
                        BOX_manage.update_page(1);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Center(child: Text("to sub2",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),),),
                      
                                        ),
                    ),  InkWell(
                      onTap: () {
                        BOX_manage.update_page(2);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Center(child: Text("to sub3",
                          style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              color: Colors.white),),),
                      
                                        ),
                    ),],),
                ),
                
                ),

                     InkWell(
                    onTap: () {
                      page_manages.update_page(0);
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.amber,
                      height: 50,
                      width: 150,
                      child: Center(
                        child: Text("GO to start page"),
                      ),
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Consumer<BOX_state_provider>(
            builder: (context, BOX_states, child) {
              return Container(child: PAGES[BOX_states.get_all()[0].BOX]);
            },
          ),
        ),
      ]),
    );
  }
}

/*

  Widget build(BuildContext context) {
    List<Widget> PAGES = [page1(),Page2()];
    return Consumer<page_manage_provider>(
        builder: (context, page_manages, child) {
       return Container(child: PAGES[page_manages.get_all()[0].page]);
              },
            );
  }
}

*/