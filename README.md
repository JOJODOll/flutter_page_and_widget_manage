# flutter_page_and_widget_manage

 Flutter project.

## Getting Started

This project is a Flutter page and widget management application.

Provider 
    : customer to switch widget or page 


    Example
     : Widget build(BuildContext context) {
        List<Widget> PAGES = [statr_page(), page1(), Page2()];
        return Consumer<page_manage_provider>(
        builder: (context, page_manages, child) {
        return Container(child: PAGES[page_manages.get_all()[0].page]);
        },
        );
    }

