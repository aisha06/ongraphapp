import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongraphapp/view/becomeseller_View2.dart';

class BecomesellerView extends StatelessWidget {
  const BecomesellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Icon(Icons.clear),
        title: Text("Become Seller"),
      ),
      body: Container(
          margin: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Become seller\nrequest form ",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Fill in the following steps ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "I am 18 or over ",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Checkbox(value: , onChanged: onChanged)
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(40),
                      backgroundColor: Theme.of(context).colorScheme.primary),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BecomeSellerView2()));
                  },
                  child: Text("Let's go!"))
            ],
          )),
    );
  }
}
