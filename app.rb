class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  # метод класса
  def self.say_something
    puts "haha"
  end
  # метод объекта
  def log_something what
    puts 'Пишу в файл'
    sleep 0.2
    @f.puts what
  end
end

Logger.say_something

logger = Logger.new
logger.log_something 'new wazzzap&'
