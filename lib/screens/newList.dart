import 'package:flutter/material.dart';
import 'package:mealapp/models/list.dart';

class ListScreen extends StatelessWidget {
   ListScreen({Key? key}) : super(key: key);

  @override
 final List<ListFood> grocery = [];


  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
      itemCount: availablelist.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(

                    width: 20,
                    height: 20,
                    color: availablelist[index].color,
                  ),
                 const SizedBox(width: 90),
                  Center(
                    child: Text(

                      availablelist[index].food,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),


    );
  }
}
