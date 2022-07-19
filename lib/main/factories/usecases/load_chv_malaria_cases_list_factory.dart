import '../../../data/usecases/usecases.dart';
import '../../../domain/usecases/usecases.dart';
import '../../composites/composites.dart';
import '../factories.dart';

RemoteLoadChvMalariaCasesList makeRemoteLoadChvMalariaCasesList() =>
    RemoteLoadChvMalariaCasesList(
        httpClient: makeAuthorizeHttpClientDecorator(),
        url: makeApiUrl('chv-malaria-case-reports'));

LocalLoadChvMalariaCasesList makeLocalLoadChvMalariaCasesList() =>
    LocalLoadChvMalariaCasesList(cacheStorage: makeLocalStorageAdapter());

LoadChvMalariaCasesList makeRemoteLoadChvMalariaCasesListWithLocalFallback() =>
    RemoteLoadChvMalariaCasesListWithLocalFallback(
        remote: makeRemoteLoadChvMalariaCasesList(),
        local: makeLocalLoadChvMalariaCasesList());

// RemoteLoadChvMalariaCasesList makeRemoteLoadSurveys() =>
//     RemoteLoadChvMalariaCasesList(
//         httpClient: makeAuthorizeHttpClientDecorator(),
//         url: makeApiUrl('chv-malaria-case-reports'));
//
// LocalLoadChvMalariaCasesList makeLocalLoadSurveys() =>
//     LocalLoadChvMalariaCasesList(cacheStorage: makeLocalStorageAdapter());
//
// LoadChvMalariaCasesList makeRemoteLoadSurveysWithLocalFallback() =>
//     RemoteLoadChvMalariaCasesListWithLocalFallback(
//         remote: makeRemoteLoadSurveys(), local: makeLocalLoadSurveys());
