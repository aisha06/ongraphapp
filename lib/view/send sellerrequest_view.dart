import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendersellerRequestView extends StatelessWidget {
  const SendersellerRequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back),
        actions:const[
          Icon(Icons.mail_lock),
          SizedBox(
            width: 5.0,
          ),
          Icon(Icons.delete),
          SizedBox(
            width: 5.0,
          ),
          Icon(Icons.mail),
          SizedBox(
            width: 5.0,
          ),
          Icon(Icons.more_horiz),
          SizedBox(
            width: 5.0,
          ),
        ],
      ),
      body: Column(
        children: [

          Row(
            children: [
              Container(
                margin:const  EdgeInsets.only(left: 20.0, right: 10.0),
                child:const  Text(
                  "Votre Candidature a bien ete \nenvoyve",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
            const   Icon(Icons.star_border_outlined)
            ],
          ), SizedBox(height: 30.0,),

          Row(
            children:[
              SizedBox(width: 15.0,),
              CircleAvatar(
                backgroundColor: Colors.yellow,
                // radius: 8.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("B"),
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(

            // mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  Row(
                    children: [Text("Bistlerr"), Text("6th jul")],
                  ),
                  Row(
                    children: [Text("a brmm66m "), Icon(Icons.arrow_drop_down)],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.forward),
              Icon(Icons.more_horiz),
            ],
          ),
          Align(alignment: Alignment.center,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(''' 
                  Merci your votre
                candidature Amandine
                      Apple ''',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),),
                Text('''
                         Lequipe de Blistter a bie regui votre 
                         ncandidature pour devenir vendeur sur
                                   notre platform.
                          Nous Mettons tout en cenvre poer 
                            vous  respondre au plus  vite !
                           En attnedent ,profiltez-bien des autes 
                                  live shows  ''',
                style: TextStyle(fontSize: 18.0),),

              ],
            ),
          )
        ],
      ),
    );
  }
}
