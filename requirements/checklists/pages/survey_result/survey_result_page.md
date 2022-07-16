# Survey Result Page

> ## Rules
1. ✅ Call the Get Poll Result method when loading the screen
2. ✅ Display loading when receiving isLoading event from presenter as true
3. ✅ Hide loading when receiving isLoading event from presenter as false or null
4. ✅ Display error message and hide list when receiving surveyResult event with error
5. ✅ Call the Get Poll Result method by clicking the reload button
6. ✅ Hide error message on success
7. ✅ Display the poll question
8. ✅ View poll responses
9. ✅ Display the percentage of each answer
10. ✅ Display disabled icon if not user response
11. ✅ Display enabled icon if user response
12. ✅ Upload the image from the correct URL, if the answer has an image
13. ✅ Do not render image if the answer has no image
14. ✅ Go to Login screen and clear navigation when receiving sessionExpired event as true
15. ✅ Call the Save Poll Result method when clicking on any item in the list