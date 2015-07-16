from fabric.api import local

def sync():
   local('git add -p')
   print("enter your git commit comment: ")
   comment = raw_input()
   local('git commit -m "%s"' % comment)
   local('git push origin master')

def deploy():
   local('heroku maintenance:on')
   local('git push heroku master')
   local('heroku maintenance:off')

