# Surveys Presenter

> ## Rules
1. ✅ Call LoadSurveys in the loadData method
2. ✅ Notify isLoadingStream as true before calling LoadSurveys
3. ✅ Notify isLoadingStream as false at the end of LoadSurveys
4. ✅ Notify surveysStream with error if LoadSurveys returns error
5. ✅ Notify surveysStream with a list of Surveys if LoadSurveys returns success
6. ✅ Take the user to the Poll Result screen when clicking on a poll
7. ✅ Notify sessionExpiredStream as true if LoadSurveys returns accessDenied error