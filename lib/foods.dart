import 'package:flutter/material.dart';
import 'package:nutriplato/about_category.dart';
import 'package:nutriplato/data/cereales.dart';
import 'package:nutriplato/data/fruits.dart';
import 'package:nutriplato/data/leguminosas.dart';
import 'package:nutriplato/data/vegetables.dart';
import 'package:nutriplato/proportion_food.dart';

import 'data.dart';
import 'data/animal.dart';
import 'food.dart';

class Foods extends StatefulWidget {
  final Color color;
  final int tappedSection;

  const Foods({
    Key? key,
    required this.color,
    required this.tappedSection,
  }) : super(key: key);

  @override
  State<Foods> createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  late List<Food> allFoods;
  late List<Food> filteredFoods;
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    switch (widget.tappedSection) {
      case 0:
        allFoods = leguminosas;
        break;
      case 1:
        allFoods = animals;
        break;
      case 2:
        allFoods = cereales;
        break;
      case 3:
        allFoods = vegetables;
        break;
      case 4:
        allFoods = fruits;
        break;
    }
    filteredFoods = allFoods;

    searchController.addListener(() {
      if (searchController.text.isEmpty) {
        setState(() {
          filteredFoods = allFoods;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: FractionallySizedBox(
        widthFactor: 0.5,
        child: Scaffold(
          backgroundColor: widget.color,
          appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: widget.color,
            title: Text(
              categories[widget.tappedSection],
              style: const TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (builder) {
                        return AboutCategory(
                          category: widget.tappedSection,
                          color: widget.color,
                        );
                      });
                },
                icon: const Icon(
                  Icons.info_outline,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 60,
                backgroundColor: widget.color,
                title: Center(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 300,
                            child: Autocomplete<Food>(
                              optionsBuilder:
                                  (TextEditingValue textEditingValue) {
                                if (textEditingValue.text == '') {
                                  return const Iterable<Food>.empty();
                                }
                                return allFoods.where((Food food) {
                                  return food.name.toLowerCase().contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              displayStringForOption: (Food food) => food.name,
                              onSelected: (Food food) {
                                // Filtrar la lista de alimentos para mostrar solo el elemento seleccionado
                                setState(() {
                                  filteredFoods = [food];
                                });
                              },
                              fieldViewBuilder: (BuildContext context,
                                  TextEditingController
                                      fieldTextEditingController,
                                  FocusNode fieldFocusNode,
                                  VoidCallback onFieldSubmitted) {
                                fieldTextEditingController.text =
                                    searchController.text;
                                return TextField(
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  cursorColor: widget.color,
                                  controller: fieldTextEditingController,
                                  focusNode: fieldFocusNode,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusColor: Colors.white,
                                    fillColor: Colors.white,
                                    iconColor: Colors.white,
                                    hoverColor: Colors.white,
                                    prefixIconColor: Colors.white,
                                    icon: Icon(
                                      Icons.search,
                                      color: widget.color,
                                    ),
                                  ),
                                  onChanged: (String value) {
                                    searchController.text = value;
                                  },
                                  onSubmitted: (String value) {
                                    // Obtener la primera sugerencia
                                    final suggestions =
                                        allFoods.where((Food food) {
                                      return food.name
                                          .toLowerCase()
                                          .contains(value.toLowerCase());
                                    });
                                    if (suggestions.isNotEmpty) {
                                      final firstSuggestion = suggestions.first;
                                      // Actualizar el texto del TextField y la lista de alimentos para mostrar solo el elemento seleccionado
                                      setState(() {
                                        searchController.text =
                                            firstSuggestion.name;
                                        filteredFoods = [firstSuggestion];
                                      });
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: Material(
                              shape: const CircleBorder(),
                              clipBehavior: Clip.hardEdge,
                              color: widget.color, // Color del botón
                              child: IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                onPressed: () {
                                  searchController.clear();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  children: List.generate(filteredFoods.length, (index) {
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        return Card(
                          elevation: 5,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (builder) {
                                    return ProportionFood(
                                      color: widget.color,
                                      food: filteredFoods[index],
                                    );
                                  });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    filteredFoods[index].name,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
