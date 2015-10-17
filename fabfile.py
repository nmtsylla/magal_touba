__author__ = 'nmtsylla'

from fabric.api import local, run, cd, env
env.hosts = [
        '166.62.100.119',
      # 'ip.add.rr.ess
      # 'server2.domain.tld',
]


from cred import *
print USERNAME
env.user = USERNAME
env.password = PASSWORD

REMOTE_WORKING_DIR = '/home/boromtouba/magal_touba/'


def commit():
    """
    add the code to the wathc then commit it
    """
    local("git add -p && git commit")


def pull(branch='master', remote='origin'):
    """
    get code from the repo to the local
    """
    local("git pull %s %s" % (remote, branch))


def rpull(branch='master', remote='origin'):
    """
    get code from the repo to the local
    """
    with cd(REMOTE_WORKING_DIR):
        run("git pull %s %s" % (remote, branch))


def push(branch='master', remote='origin', runlocal=True):
    """
    send the local code to the repo
    """
    if runlocal:
        # lance la commande en local
        local("git push %s %s" % (remote, branch))
    else:
        # lance la commande sur les serveurs de la liste eng.hosts
        run("git push %s %s" % (remote, branch))


def sync(branch='master', remote='origin', runlocal=True):
    pull(branch, remote, runlocal)
    push(branch, remote, runlocal)


def deploy(branch='master', remote='origin'):
    with cd(REMOTE_WORKING_DIR):
        # with prefix('workon virtualenv'):
        rpull()
        run("bundle install")
        run("rake db:migrate RAILS_ENV=production")
        run("sudo /etc/init.d/nginx restart")
