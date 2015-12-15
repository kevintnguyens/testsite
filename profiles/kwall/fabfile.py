from fabric.api import local, run, cd, lcd, sudo
from fabric.state import env
from fabric.contrib.files import exists
from fabric.context_managers import path

env.hosts = ['localhost']

def mktestsite(client, name):
  with lcd("/var/www"):
    if exists("/var/www/%s" % client) != True :
      local("mkdir %s" % client)
    if exists("/var/www/%s/%s" % (client, name)):
      print "client and project already exits"
    else:
      with lcd("/var/www/%s" % client):
        local("mkdir %s" % name)
        local("mkdir %s/files" % name)
        local("mkdir %s/backups" % name)
        local("mkdir %s/drush" % name)
        local("mkdir %s/fabric" % name)
      with lcd("/var/www/%s/%s/drush" % (client, name)):
        local("git clone git@git.kwallcompany.com:kwall-internal/basemake.git")
      with lcd("/var/www/%s/%s" % (client, name)):
        local("drush -y make drush/basemake/basemake.make ./htdocs --prepare-install")
      with lcd("/var/www/%s/%s/htdocs" % (client, name)):
        local("mv profiles/kwall/modules/contrib sites/all/modules/contib")
        local("mv profiles/kwall/themes/contrib sites/all/themes/contib")
        local("mv profiles/kwall/libraries sites/all/libraries")

