require 'singleton'

class Logger
  include Singleton
  # открываем файл
  def initialize
    @f = File.open 'log.txt', 'a'
  end
 # заменили га инклуд синглетон
  #@@x = Logger.new
  #def self.instance
  #  return @@x
  #end
  # метод класса
  #def self.say_something
  #  puts "haha"
  #end
  # метод объекта, экземляра
  def log_something what
    puts 'Пишу в файл'
    sleep 0.2
    @f.puts what
    @f.flush # flush записывает на диск
  end
  # метод new может вызываться только внутри самого класса,
  # защита от создания нового объекта из вне класса
  # заменили на сиглетон библиотеку руби private_class_method :new
end