import '../../../data/usecases/usecases.dart';
import '../../../domain/usecases/usecases.dart';
import '../../composites/composites.dart';
import '../factories.dart';

RemoteLoadChvMalariaCase makeRemoteLoadChvMalariaCase(
        String chvMalariaCaseId) =>
    RemoteLoadChvMalariaCase(
        httpClient: makeAuthorizeHttpClientDecorator(),
        url: makeApiUrl('chv-malaria-case-reports/$chvMalariaCaseId'));

LocalLoadChvMalariaCase makeLocalLoadChvMalariaCase(String chvMalariaCaseId) =>
    LocalLoadChvMalariaCase(cacheStorage: makeLocalStorageAdapter());

LoadChvMalariaCase makeRemoteLoadChvMalariaCaseWithLocalFallback(
        String surveyId) =>
    RemoteLoadChvMalariaCaseWithLocalFallback(
        remote: makeRemoteLoadChvMalariaCase(surveyId),
        local: makeLocalLoadChvMalariaCase(surveyId));
