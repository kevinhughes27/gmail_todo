Gmail ToDo
==========

Do you use your Gmail inbox as a todo list? You can use this gem
to quickly fire yourself a todo from the terminal, precious seconds
saved!


Installing
-----------

    gem install gmail_todo


Building from source
--------------------
run:

    gem build gmail_todo.gemspec
    gem install gmail_todo-X.X.X.gem


Usage
-----
from the terminal:

    todo <subject> <body>

the string "[ToDo]" will be appended to the subject, I use this to auto filter these emails to my ToDo label and star them.

On first use the app will prompt you for gmail credentials. Your credentials will
be stored as yml in a hidden folder in your home directory. If you have 2 factor auth turned on for your gmail account (which you should) then you'll need an app token. You can get a token by going to `account -> security -> app passwords` of your gmail account.
