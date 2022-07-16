# Login Presenter

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
11. ✅ For the form to be valid all Error Streams must be null and all mandatory fields cannot be empty
12. ✅ Do not notify isFormValidStream if the value is equal to the last one
13. ✅ Call Authentication with correct email and password
14. ✅ Notify isLoadingStream as true before calling Authentication
15. ✅ Notify isLoadingStream as false at the end of Authentication
16. ✅ Notify mainErrorStream if Authentication returns error
17. ✅ Close all Streams in dispose
18. ✅ Write Account in cache on success
19. ✅ Notify mainErrorStream if SaveCurrentAccount returns error
20. ✅ Take the user to the Polls screen in case of success
21. ✅ Take the user to the Create Account screen by clicking on the create account link