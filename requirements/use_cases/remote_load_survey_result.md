# Remote Load Survey Result

> ## Success case
1. ✅ System makes a request for the survey result API URL
2. ✅ System validates the access token to see if the user has permission to see this data
3. ✅ System validates data received from API
4. ✅ System delivers poll result data

> ## Exception - Invalid URL
1. ✅ System returns an unexpected error message

> ## Exception - Access Denied
1. ✅ System returns access denied message

> ## Exception - Invalid Response
1. ✅ System returns an unexpected error message

> ## Exception - Server Failed
1. ✅ System returns an unexpected error message