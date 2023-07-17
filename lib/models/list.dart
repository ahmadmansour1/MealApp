import 'dart:ui';

import 'package:flutter/material.dart';

class ListFood {
  final String food ;
  final Color color ;
  const ListFood({required this.food ,this.color = Colors.orange,});


}

 const availablelist  = [
 ListFood(food: 'milk', color: Colors.yellow ),
   ListFood(food: 'banana', color: Colors.orange),
   ListFood(food: 'stake', color: Colors.red ),


 ];