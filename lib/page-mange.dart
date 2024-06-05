import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_1/A_provider/page_state_provider.dart';
import 'package:test_1/pages/page1.dart';
import 'package:test_1/pages/page2.dart';
import 'package:test_1/pages/start_page.dart';

class page_manage extends StatefulWidget {
  const page_manage({super.key});

  @override
  State<page_manage> createState() => _page_manageState();
}

class _page_manageState extends State<page_manage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> PAGES = [statr_page(), page1(),Page2()];
    return Consumer<page_manage_provider>(
        builder: (context, page_manages, child) {
       return Container(child: PAGES[page_manages.get_all()[0].page]);
              },
            );
  }
}