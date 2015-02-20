Gem::Specification.new do |s|
  s.name        = 'gmail_todo'
  s.version     = '0.0.4'
  s.summary     = "Gmail ToDo gem"
  s.description = "Do you use your inbox as a todo list? Quickly fire yourself a todo from your terminal!"
  s.authors     = ["Kevin Hughes"]
  s.email       = 'kevinhughes27@gmail.com'
  s.files       = ["lib/gmail_todo.rb"]
  s.executables = ["todo"]
  s.homepage    = 'https://github.com/kevinhughes27/gmail_todo'
  s.license     = 'MIT'

  s.add_runtime_dependency 'gmail'

  s.post_install_message = <<-eos

    Thanks for installing gmail_todo!

    To get started run `todo` from the console. If you haven't
    entered credentials yet then you will get a prompt. If you
    have 2 factor auth turned on for your gmail account (which
    you should) then you'll need an app token. You can get a
    token by going to `account -> security -> app passwords` of
    your gmail account.

  eos
end
