Redmine Api plugin
========================

Overview
--------
This plugin add api functionality to redmine


Installation Steps
-------------------
 - Clone this repo to redmine /plugins folder for the user that runs redmine
 - Restart Redmine


Redmine settings
----------------
 - To enable the API-style authentication, you have to check Enable REST API in Administration -> Settings -> Authentication
 - You can find your API key on your account page ( /my/account ) when logged in, on the right-hand pane of the default layout
  

Usage
-----
```
authorization:
<redmine url>/issues.json?key=<your api key>

issues with status open:
<redmine url>/issues.json?status_id=open

first 1000 issues:
<redmine url>/issues.json?limit=1000&offset=0

```