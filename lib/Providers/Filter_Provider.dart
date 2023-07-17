import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter ,bool>>{

  FiltersNotifier(): super({ Filter.glutenFree : false,
    Filter.lactoseFree : false ,
    Filter.vegan : false,
    Filter.vegetarian:false
  });

  void setFilter(Filter filter , bool isActive){
    state = {... state, filter:isActive};
  }
  void setAllFilters( Map<Filter ,bool> choosenFilter){
    state  = choosenFilter;
  }

}

final filterProvider = StateNotifierProvider<FiltersNotifier , Map<Filter ,bool>>((ref){
  return FiltersNotifier(
  );
});