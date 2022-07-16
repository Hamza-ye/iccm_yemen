# Local Load Survey Result

> ## Success case
1. ✅ System requests data from the result of a poll from Cache
2. ✅ System delivers poll result data

> ## Exception - Error loading data from Cache
1. ✅ System returns an unexpected error message

> ## Exception - Cache empty
1. ✅ System returns an unexpected error message

---

# Local Validate Survey Result

> ## Success case
1. ✅ System requests data from the result of a poll from Cache
2. ✅ System validates data received from Cache

> ## Exception - Error loading data from Cache
1. ✅ System clears cache data

> ## Exception - Invalid data in cache
1. ✅ System clears cache data

---

# Local Save Survey Result

> ## Success case
1. ✅ System writes new data to Cache

> ## Exception - Error writing data to Cache
1. ✅ System returns an unexpected error message