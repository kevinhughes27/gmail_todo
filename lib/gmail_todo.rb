require 'gmail'

class GmailToDo

  CREDENTIALS = ENV['HOME'] + '/.gmail_todo_credentials.yml'

  attr_reader :username
  attr_reader :password

  def initialize
    if File.exists?(CREDENTIALS)
      load_credentials
    else
      prompt_for_credentials
    end
  end

  def send(todo, details = nil)
    gmail = Gmail.connect(username, password)

    gmail.deliver do
      to gmail.username
      subject "[ToDo] #{todo}"
      body "#{details}"
    end

    gmail.logout
  end

  private

  def load_credentials
    credentials = YAML.load(File.read(CREDENTIALS))
    @username = credentials["gmail"]["username"]
    @password = credentials["gmail"]["password"]
  end

  def prompt_for_credentials
    puts "Enter your gmail username: "
    @username = $stdin.gets.chomp
    puts "Enter your gmail password or token: "
    @password = $stdin.gets.chomp

    save_credentials
  end

  def save_credentials
    credentials = {gmail: {username: username, password: password}}
    File.open(CREDENTIALS, 'w') {|f| f.write credentials.to_yaml }
  end

end
