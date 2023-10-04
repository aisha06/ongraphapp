import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongraphapp/view/becomeseller_View2.dart';

class BecomesellerView extends StatefulWidget {
  BecomesellerView({super.key});

  @override
  State<BecomesellerView> createState() => _BecomesellerViewState();
}

class _BecomesellerViewState extends State<BecomesellerView> {
  bool Value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        // bottom: MyLinearProgressIndicator(
        //   backgroundColor: Colors.blueAccent,
        // ),
        backgroundColor: Theme.of(context).colorScheme.background ,
        leading: Icon(Icons.clear,
        color:  Theme.of(context).colorScheme.primary,),
        title: Text("Become Seller",
        style: TextStyle(color:  Theme.of(context).colorScheme.primary,
      ),
    ),
      ),
      body: Container(
          margin: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Become seller\nrequest form ",
                  style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Fill in the following steps ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Colors.blueAccent,
                    value: Value,
                    onChanged: (bool? newvalue) {
                      setState(() {
                        Value = newvalue!;
                      });
                    },
                  ), //Che
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
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.0,),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.yellow,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5.0,),
                    height: 40.0,
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            elevation: 6.0,

                            minimumSize: const Size.fromHeight(20),
                            backgroundColor:
                                Theme.of(context).colorScheme.primary),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BecomeSellerView2()));
                        },
                        child: const Text("Let's go!")),
                  )
                ],
              )
            ],
          )),
    );
  }
}
