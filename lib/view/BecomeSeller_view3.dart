import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'becomeSellerView4.dart';

class BecomeSellerview3 extends StatelessWidget {
  BecomeSellerview3({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: const Icon(Icons.clear),
        title: const Text("Become Seller"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Your presence on\nthe Internets ",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: const Text(
                        "Please include liks to the platforms on \nwhich you are present  ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'link to your profile on the platform ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),

                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Invalid link ';
                      }
                      return null;
                    },
                  ),
                ),
             SizedBox(height: 20.0,),
             Align(alignment: Alignment.topLeft,
               child: ElevatedButton(onPressed: (){},
                   child:Text("+ Add",
                   style: TextStyle(fontSize: 20.0),)),
             )

              ],
            )),
      ),
      bottomNavigationBar: Row(
        children: [
          const Icon(
            Icons.arrow_back,
            size: 18.0,
          ),
          const Text(
            "Back",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BecomeSellerview4()));
              },
              child: Text(
                "Next",
              ))
        ],
      ),
    );
  }
}
