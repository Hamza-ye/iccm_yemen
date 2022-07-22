import '../ui/components/components.dart';
import './main/factories/factories.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

    return GetMaterialApp(
      title: 'ICCM Yemen',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      navigatorObservers: [routeObserver],
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: makeSplashPage, transition: Transition.fade),
        GetPage(
            name: '/login', page: makeLoginPage, transition: Transition.fadeIn),
        // GetPage(name: '/signup', page: makeSignUpPage),
        GetPage(
            name: '/chv_malaria_cases_list',
            page: makeChvMalariaCasesListPage,
            transition: Transition.fadeIn),
        // GetPage(name: '/chv_malaria_case_form/:case_id', page: makeChvMalariaCaseFormPage),
      ],
    );
  }
}
