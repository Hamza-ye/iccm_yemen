# Signup Presenter

> ## Rules
1. ✅ Call Validation when changing email
2. ✅ Notify the emailErrorStream with the same error as Validation, if it returns an error
3. ✅ Notify emailErrorStream with null, if Validation does not return an error
4. ✅ Do not notify the emailErrorStream if the value is equal to the last one
5. ✅ Notify isFormValidStream after changing email
6. ✅ Call Validation when changing password
7. ✅ Notify passwordErrorStream with the same error as Validation, if it returns error
8. ✅ Notify passwordErrorStream with null, if Validation does not return an error
9. ✅ Don't notify passwordErrorStream if value equals last
10. ✅ Notify isFormValidStream after password change
11. ✅ Call Validation when changing the name
12. ✅ Notify the nameErrorStream with the same error as Validation, if it returns an error
13. ✅ Notify nameErrorStream with null, if Validation does not return an error
14. ✅ Don't notify nameErrorStream if value equals last
15. ✅ Notify isFormValidStream after name change
16. ✅ Call Validation when changing password confirmation
17. ✅ Notify passwordConfirmationErrorStream with the same error as Validation, if it returns error
18. ✅ Notify passwordConfirmationErrorStream with null, if Validation does not return error
19. ✅ Do not notify passwordConfirmationErrorStream if value is equal to last
20. ✅ Notify isFormValidStream after changing password confirmation
21. ✅ For the form to be valid all Error Streams must be null and all mandatory fields cannot be empty
22. ✅ Do not notify isFormValidStream if the value is equal to the last one
23. ✅ Call AddAccount with correct values
24. ✅ Notify isLoadingStream as true before calling AddAccount
25. ✅ Notify isLoadingStream as false at the end of AddAccount
26. ✅ Notify mainErrorStream if AddAccount returns an error
27. ✅ Close all Streams in dispose
28. ✅ Write Account in cache in case of success
29. ✅ Notify mainErrorStream if SaveCurrentAccount returns error
30. ✅ Take the user to the Polls screen in case of success
31. ✅ Take the user to the Login screen by clicking on the back to login link