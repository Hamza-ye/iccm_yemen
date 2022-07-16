# Surveys Page

> ## Rules
1. ✅ Call the List Polls method when loading the screen
2. ✅ Display loading when receiving isLoading event from presenter as true
3. ✅ Hide loading when receiving isLoading event from presenter as false or null
4. ✅ Display error message and hide list when receiving event from surveysData with error
5. ✅ Hide error message and display list when receiving event from surveysData with data
6. ✅ Show poll date and question based on template
7. ✅ Show unanswered polls in red and user-answered polls in green
8. ✅ Call the List Polls method by clicking the reload button
9. ✅ Go to the poll result screen when clicking on a poll
10. ✅ Go to Login screen and clear navigation when receiving sessionExpired event as true