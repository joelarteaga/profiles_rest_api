
[program:profiles_api]
command = /usr/local/virtualenvs/profiles_api/bin/uwsgi --http :9000 --wsgi-file /usr/local/apps/profiles-rest-api/src/profiles_project/profiles_project/wsgi.py
directory = /usr/local/apps/profiles-rest-api/src/profiles_project/
user = root
autostart = true
autorestart = true
stdout_logfile = /var/log/profiles_api.log
stderr_logfile = /var/log/profiles_api_err.log
