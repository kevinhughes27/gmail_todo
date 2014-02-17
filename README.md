Gmail ToDo
==========

Do you use your Gmail inbox as a todo list? You can use this gem
to quickly fire yourself a todo from the terminal, precious seconds
saved!

Usage
-----

from the terminal:

    ```
    todo <subject> <body>
    ```

the string "[ToDo]" will be appended to the subject, I use this to auto filter these emails to my ToDo label and star them.

Building from source
--------------------

gem build gmail_todo.gemspec
gem install gmail_todo-0.0.1.gem
