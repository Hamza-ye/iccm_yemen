# Survey Result Presenter

> ## Rules
1. ✅ Call LoadSurveyResult in loadData method
2. ✅ Notify isLoadingStream as true before calling LoadSurveyResult
3. ✅ Notify isLoadingStream as false at the end of LoadSurveyResult
4. ✅ Notify surveyResultStream with error if LoadSurveyResult returns error
5. ✅ Notify the surveyResultStream with a SurveyResult if LoadSurveyResult returns success
6. ✅ Notify sessionExpiredStream as true if LoadSurveys returns accessDenied error
7. ✅ Call SaveSurveyResult in the save method
8. ✅ Notify isLoadingStream as true before calling SaveSurveyResult
9. ✅ Notify isLoadingStream as false at the end of SaveSurveyResult
10. ✅ Notify surveyResultStream with error if SaveSurveyResult returns error
11. ✅ Notify the surveyResultStream with a SurveyResult if the SaveSurveyResult returns success
12. ✅ Notify sessionExpiredStream as true if SaveSurveyResult returns accessDenied error