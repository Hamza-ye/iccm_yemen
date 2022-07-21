import '../../components/components.dart';
import '../../mixins/mixins.dart';
import '../pages.dart';
import './components/components.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ChvMalariaCasesListPage extends StatefulWidget {
  final ChvMalariaCasesListPresenter presenter;

  ChvMalariaCasesListPage(this.presenter);

  @override
  _ChvMalariaCasesListPageState createState() => _ChvMalariaCasesListPageState();
}

class _ChvMalariaCasesListPageState extends State<ChvMalariaCasesListPage>
    with LoadingManager, NavigationManager, SessionManager, RouteAware {
  @override
  Widget build(BuildContext context) {
    Get.find<RouteObserver>()
        .subscribe(this, ModalRoute.of(context) as PageRoute);
    return Scaffold(
      // TODO Translate
      appBar: AppBar(title: Text('R.string.surveys')),
      body: Builder(
        builder: (context) {
          handleLoading(context, widget.presenter.isLoadingStream);
          handleSessionExpired(widget.presenter.isSessionExpiredStream);
          handleNavigation(widget.presenter.navigateToStream);
          widget.presenter.loadData();

          return StreamBuilder<List<ChvMalariaCaseViewModel>>(
              stream: widget.presenter.chvMalariaCasesStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return ReloadScreen(
                      error: '${snapshot.error}',
                      reload: widget.presenter.loadData);
                }
                if (snapshot.hasData) {
                  return ListenableProvider(
                      create: (_) => widget.presenter,
                      child: ChvMalariaCasesListItems(snapshot.data!));
                }
                return SizedBox(height: 0);
              });
        },
      ),
    );
  }

  @override
  void didPopNext() {
    widget.presenter.loadData();
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
  }
}
