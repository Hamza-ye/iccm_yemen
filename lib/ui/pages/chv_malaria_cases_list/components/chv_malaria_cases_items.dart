import 'package:iccm_yemen/ui/pages/pages.dart';

import './components.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'chv_malaria_cases_list_item.dart';

class ChvMalariaCasesListItems extends StatelessWidget {
  final List<ChvMalariaCaseViewModel> viewModels;

  ChvMalariaCasesListItems(this.viewModels);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          aspectRatio: 1
        ),
        items: viewModels.map((viewModel) => ChvMalariaCasesListItem(viewModel)).toList(),
      ),
    );
  }
}