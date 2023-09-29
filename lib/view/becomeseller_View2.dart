import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ongraphapp/view/BecomeSeller_view3.dart';

class BecomeSellerView2 extends StatelessWidget {
  const BecomeSellerView2({super.key});

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
                  "What would you\nlike to sell? ",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      "Select one to three categories ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              chipList()
            ],
          )),
      bottomNavigationBar: Row(
        children: [
          Icon(
            Icons.arrow_back,
            size: 18.0,
          ),
          Text(
            "Back",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BecomeSellerview3()));
              },
              child: Text(
                "Next",
              ))
        ],
      ),
    );
  }

  Widget _buildChip(
    String label,
  ) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        // backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      // backgroundColor: color,
      elevation: 6.0,
      // shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

  chipList() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        _buildChip('Pokemon'),
        _buildChip(
          'yu-gi-yon',
        ),
        _buildChip(
          'Art',
        ),
        _buildChip(
          'Musique',
        ),
        _buildChip('Hary potter '),
        _buildChip('Sneakers'),
        _buildChip('Lorcana'),
        _buildChip('RiseS'),
      ],
    );
  }
}
