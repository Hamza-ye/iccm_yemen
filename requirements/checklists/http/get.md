# HTTP Get

> ## Success
1. ✅ Request with correct http verb (get)
2. ✅ Pass the JSON content type in the headers
3. ✅ Ok - 200 and answer with data
4. ✅ No content - 204 and no data response

> ## Errors
1. ✅ Bad request - 400
2. ✅ Unauthorized - 401
3. ✅ Forbidden - 403
4. ✅ Not found - 404
5. ✅ Internal server error - 500

> ## Exception - Status code different from those mentioned above
1. ✅ Internal server error - 500

> ## Exception - Http request threw some exception
1. ✅ Internal server error - 500

> ## Exception - Invalid http verb
1. ✅ Internal server error - 500