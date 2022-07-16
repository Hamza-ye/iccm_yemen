# Authorize HTTP Client Decorator

> ## Success
1. ✅ Get access token from Cache
2. ✅ Execute the HttpClient request that is being decorated with a new header (x-access-token)
3. ✅ Return the same response as the HttpClient being decorated

> ## Exception - Failed to get data from cache
1. ✅ Return HTTP Forbidden Error - 403
2. ✅ Erase access token from Cache

> ## Exception - HttpClient returned some exception (minus Forbidden)
1. ✅ Return the same exception received

> ## Exception - HttpClient returned Forbidden error
1. ✅ Return HTTP Forbidden Error - 403
2. ✅ Erase access token from Cache