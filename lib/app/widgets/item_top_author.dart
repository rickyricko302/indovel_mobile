import 'package:flutter/material.dart';

class WidgetItemTopAuthor extends StatelessWidget {
  const WidgetItemTopAuthor({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: index == 0 ? 18 : 0, right: index == 4 ? 18 : 0),
      child: Column(
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
            radius: 35,
          ),
          SizedBox(
            height: 5,
          ),
          Text("Boy Candra")
        ],
      ),
    );
  }
}
