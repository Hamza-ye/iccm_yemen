import 'package:flutter/material.dart';
import 'package:iccm_yemen/ui/pages/pages.dart';
import 'package:provider/provider.dart';

class ChvMalariaCasesListItem extends StatelessWidget {
  final ChvMalariaCaseViewModel viewModel;

  ChvMalariaCasesListItem(this.viewModel);

  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<ChvMalariaCasesListPresenter>(context);
    return GestureDetector(
      onTap: () => presenter.goToChvMalariaCaseForm(viewModel.id),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: viewModel.synced == true
                  ? Theme.of(context).secondaryHeaderColor
                  : Theme.of(context).primaryColorDark,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 1),
                    spreadRadius: 0,
                    blurRadius: 2,
                    color: Colors.black)
              ],
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewModel.name ?? '',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                viewModel.subVillage ?? '',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(
                viewModel.status ?? '',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(
                viewModel.synced.toString(),
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
