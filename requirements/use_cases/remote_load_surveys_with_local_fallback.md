# Remote Load Surveys With Local Fallback

> ## Success case
1. ✅ System performs remote implementation load
2. ✅ System replaces Cache data with obtained data
3. ✅ System returns this data

> ## Exception - Access Denied
1. ✅ System passes access denied exception

> ## Exception - Any other error
1. ✅ System executes cache data validation method
2. ✅ System execute method of loading data from cache
3. ✅ System returns this data

> ## Exception - Error getting data from Cache
1. ✅ System returns an unexpected error exception