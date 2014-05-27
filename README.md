Heroku buildpack: Java (with plain java jar)
=========================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpack) for Java apps.
It just starts the jar that you commit

Usage
-----

Example usage:

    $ ls
    Procfile  main.jar	

    $ heroku create --stack cedar --buildpack http://github.com/dennisg/heroku-buildpack-plainjava.git
    
    $ git push heroku master
    ...
	-----> Heroku receiving push
	-----> Fetching custom buildpack... done
	-----> Java (using plain java jar) app detected
       
	-----> Discovering process types
    Procfile declares types -> web
	-----> Compiled slug size is 5.6MB
	-----> Launching... done, v5
    http://<your-app-name>.herokuapp.com deployed to Heroku

The buildpack will always detect your app as Java ...


Example Procfile:

	web: java -jar main.jar

-------

Hacking
-------

To use a modification of this buildpack, fork it on Github. Push up changes to your fork, then create a test app with `--buildpack <your-github-url>` and push to it too.
