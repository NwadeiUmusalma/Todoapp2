import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.blue[200],
      margin:const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading:const Icon(Icons.check_circle_outline,
            color: Color(0xFFEF31F3), size: 27.5),
        title:const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Plan trip to Finland",
            style: TextStyle(fontSize: 20, color: Color(0xFF40586F)),
          ),
        ),
        subtitle:const Text("The family trip to Finland next summer"),
        trailing: SizedBox(
          child: SizedBox(
            width: 100,
            child: Row(children:const [
              Icon(Icons.notifications_none_outlined),
              Text("yesterday", style: TextStyle(color: Color(0xFFEF31F3))),
            ]),
          ),
        ),
      ),
    );
  }
}
