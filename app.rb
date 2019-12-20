class Logger
  def initialize
    @f = File.open 'log.txt', 'a'
  end
  @@x = nil
  def self.instance
    if @@x == nil
      @@x = Logger.new
    end
    return @@x
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
Logger.instance.log_something 'blablabla'