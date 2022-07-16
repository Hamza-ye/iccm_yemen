# Local Load Surveys

> ## Success case
1. ✅ System requests data from Cache polls
2. ✅ System delivers poll data

> ## Exception - Error loading data from Cache
1. ✅ System returns an unexpected error message

> ## Exception - Cache empty
1. ✅ System returns an unexpected error message

---

# Local Validate Surveys

> ## Success case
1. ✅ System requests data from Cache polls
2. ✅ System validates data received from Cache

> ## Exception - Error loading data from Cache
1. ✅ System clears cache data

> ## Exception - Invalid data in cache
1. ✅ System clears cache data

---

# Local Save Surveys

> ## Success case
1. ✅ System writes new data to Cache

> ## Exception - Error writing data to Cache
1. ✅ System returns an unexpected error message