import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todoapp/custom_widgets/todo_card.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo app",
      home: TodoHome(),
    );
  }
}

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF4F7fE),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: CircleAvatar(
              child: Text("NS"),
            ),
          ),
          title: const Text("My Tasks"),
          actions: const [
            Icon(Icons.sort),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const TodoCard();
          },
          itemCount: 10,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child:const Icon(
              Icons.add,
              size: 50,
            )),
        bottomNavigationBar: InkWell(
          onTap: (){
          showBarModalBottomSheet(
  context: context,
  builder: (context) => Container(),
);
 
          },
          child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color:const Color(0xFFCCD9E5),
                  borderRadius: BorderRadius.circular(10)),
              ),
        ));
           children: Row(
              children: [Icon const(CupertinoIcons.check_mark_circled_solid)],
              Text("completed"),
              Icon const(Icons.keyboard_arrow_down),
              SizedBox(
                 width: 10
            ),
            );
            

  }
}
