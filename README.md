Gmail ToDo
==========

Do you use your Gmail inbox as a todo list? You can use this gem
to quickly fire yourself a todo from the terminal, precious seconds
saved!


Installing
-----------

    gem install gmail_todo


Usage
-----
First you'll need to setup the required credentials, copy the empty credentials.yml file from /lib and make a new folder in your home directory (~/.gmail_todo) and copy the yml file there. Enter your gmail credentials, if you have 2 factor auth turned on (which you should) you can make a token by going to account -> security -> app passwords

from the terminal:

    todo <subject> <body>

the string "[ToDo]" will be appended to the subject, I use this to auto filter these emails to my ToDo label and star them.


Building from source
--------------------
run:

    gem build gmail_todo.gemspec
    gem install gmail_todo-0.0.1.gem
