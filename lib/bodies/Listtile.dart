import 'package:flutter/material.dart';

class Listtile extends StatefulWidget {
  const Listtile({Key? key}) : super(key: key);

  @override
  State<Listtile> createState() => _ListtileState();
}

class _ListtileState extends State<Listtile> {
  List<String> RadioList = [
    "male",
    "female",
    "other",
  ];
  String selectValue = "";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: RadioList.length,
      itemBuilder: (context, index) {
        bool isCheck = RadioList.elementAt(index) == selectValue;
        return Row(
          children: [
            Radio<String>(
                value: RadioList.elementAt(index),
                groupValue: selectValue,
                onChanged: (val) {
                  setState(() {
                    selectValue = val!;
                  });
                }),
            Text(RadioList.elementAt(index),style: TextStyle(color: isCheck ?Colors.blue : Colors.black,
            fontSize: isCheck? 16:13,
            fontWeight: isCheck?FontWeight.w500:FontWeight.w200),)
          ],
        );
      },
    );
  }
}

// Padding(
// padding: const EdgeInsets.only(top: 50),
// child: ListTile(
//
// leading: ClipOval(
// child: Image.network('https://imgs.mongabay.com/wp-content/uploads/sites/20/2022/03/11184718/FISHCirrhilabrus-finifenmaa_4%C2%A9-Yi-Kai-Tea-scaled.jpeg',fit: BoxFit.cover),
//
// ),title: const Text("fchjn"),
// subtitle: const Text("hvjhv"),contentPadding: const EdgeInsets.only(left: 50),
// dense: true,
// focusColor: Colors.pink,
// hoverColor: Colors.blue,
// selected: true,
// selectedColor: Colors.white,horizontalTitleGap: 05,
// selectedTileColor: Colors.black,
// minLeadingWidth: 10,
// minVerticalPadding: 10,
// onTap: () {
// print("pressed");
// },
// onLongPress: () {
// print(" long pressed");
// },
// shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// ),
// );
