import 'package:flutter/material.dart';

class Ui2 extends StatelessWidget {
  const Ui2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 20, top: 60, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 150,
              child: Text(
                "Here to Get Welcome !",
                style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold
                ),
              )),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter your name"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter your phone number"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Enter your address"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Sign up", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)),
              ),
              CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(
                    Icons.arrow_circle_right_rounded,
                    color: Colors.indigo.shade900,
                    size: 70,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Sign in",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Forget Password ?",
                    style: TextStyle(color: Colors.grey)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
