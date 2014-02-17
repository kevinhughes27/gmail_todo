require 'gmail'

class GmailToDo

  LOCAL_CREDENTIALS = ENV['HOME'] + '/.gmail_todo/credentials.yml' unless defined?(LOCAL_CREDENTIALS)
  DEFAULT_CREDENTIALS = File.dirname(__FILE__) + '/credentials.yml' unless defined?(DEFAULT_CREDENTIALS)

  def initialize
    file = File.exists?(LOCAL_CREDENTIALS) ? LOCAL_CREDENTIALS : DEFAULT_CREDENTIALS
    credentials = YAML.load(File.read(file))
    @username = credentials["gmail"]["username"]
    @password = credentials["gmail"]["password"]
  end

  def username
    @username
  end

  def password
    @password
  end

  def send_todo(todo, details = nil)
    gmail = Gmail.connect(username, password)

    gmail.deliver do
      to gmail.username
      subject "[ToDo] #{todo}"
      body "#{details}"
    end

    gmail.logout
  end

end
