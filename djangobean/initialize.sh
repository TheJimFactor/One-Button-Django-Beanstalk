# updating and automating - http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Python_django.html
#
#
# questions:
# 1) is it possible to create a virtualenv in python?
# 2) where do I want the test app to be located?
# 3) how do I run command line tools like pip freeze > requirements.txt the right way?
# 4) What should I do for the user and what should they do themselves?

# Decisions:
# 0) Make the bash called by python for lols?
# 1) Only work on linux/ubuntu to begin with, no windows support is attempted
# 2) This should probably be bash.,w


sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install libmysqlclient-dev python-dev python2.6 python2.6-dev -y
rm -rf /tmp/djangodev
virtualenv -p python2.6 /tmp/djangodev
. /tmp/djangodev/bin/activate
pip install django==1.4.5
pip install mysql-python==1.2.3

# remove existing mysite if there is one
rm -rf mysite/
django-admin.py startproject mysite
cd mysite
pip freeze > requirements.txt
python manage.py runserver 0.0.0.0:8000
