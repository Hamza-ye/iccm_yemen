import '../../../../presentation/presenters/presenters.dart';
import '../../../../ui/pages/pages.dart';
import '../../factories.dart';

// ChvMalariaCasesListPresenter makeGetxChvMalariaCasesListPresenter() =>
//     GetxChvMalariaCasesListPresenter(
//       loadChvMalariaCases: makeRemoteLoadChvMalariaCasesListWithLocalFallback(),
//       validation: makeChvMalariaCasesListValidation(),
//     );
ChvMalariaCasesListPresenter makeGetxChvMalariaCasesListPresenter() =>
    GetxChvMalariaCasesListPresenter(
      loadChvMalariaCases: makeRemoteLoadChvMalariaCasesList(),
      validation: makeChvMalariaCasesListValidation(),
    );
