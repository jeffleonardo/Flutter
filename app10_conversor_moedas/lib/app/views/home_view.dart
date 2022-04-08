

import 'package:app7_abertura_de_conta/app/models/moeda_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(  
                 children: [          
                    Expanded(child: DropdownButton(items: [], onChanged: (value) {})),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
               ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('CONVERTER'),
          )
        ],
      ),
    ));
  }
}