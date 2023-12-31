if [ "${APP_ENV}" = "PROD" ]
then
    gunicorn --bind 0.0.0.0:5000 --limit-request-field_size 16380 wsgi:application
else
    export FLASK_DEBUG=1
    export FLASK_APP=app.py
    flask run --host=0.0.0.0
fi