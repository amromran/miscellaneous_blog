require_relative 'ThingsToDo'
require_relative 'Task'

class Shell
  def initialize
    @list = ThingsToDo.new
    @list.load
  end

  def run
    loop do
      puts "\nCommands: list | add | remove | update | exit"
      print "> "
      input = gets&.chomp
      break if input.nil? || input.downcase == "exit"

      case input
      when "list"
        @list.list

      when "add"
        print "Task name: "
        name = gets.chomp
        @list.add(name)
        puts "Added '#{name}'."

      when "remove"
        print "Task name to remove: "
        name = gets.chomp
        @list.remove(name)
        puts "Removed '#{name}'."

      when "update"
        print "Task name: "
        name = gets.chomp
        task = @list.find(name)
        if task
          print "New progress (%): "
          percent = gets.chomp.to_i
          task.update_progress(percent)
          puts "Updated '#{name}' to #{percent}%."
        else
          puts "Task is not found"
        end

      else
        puts "Unknown command."
      end
    end
    @list.save
    puts "Progress Saved!"
  end
end
Shell.new.run