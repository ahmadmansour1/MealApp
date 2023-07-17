import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealapp/models/meal.dart';

class FavoritMealsNotif extends StateNotifier<List<Meal>>{
  FavoritMealsNotif() : super([]);

  bool IsToggleFavorite (Meal meal){
    final favMeals = state.contains(meal);
    if(favMeals){
      state.where((m) => m.id  != meal.id).toList();
      return false ;
      //remove if not matching
       }
    else {
      state = [...state , meal];
      return true ;//add the meal to the rest f the list
    }
  }

}
final favoriteMealProvider =
StateNotifierProvider<FavoritMealsNotif, List<Meal>>((ref){
return FavoritMealsNotif();
});