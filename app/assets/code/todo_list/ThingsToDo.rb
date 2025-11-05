require_relative 'Task'
require 'json'

class ThingsToDo
  attr_reader :things

  FILE_PATH = "tasks.json"

  def initialize(*arr)
    @things = arr.map { |t| Task.new(t) }
  end

  def add(*tasks)
    @things.push(*tasks.map { |t| Task.new(t) })
  end

  def remove(*tasks)
    tasks.each do |name|
      @things.reject! { |t| t.name == name }
    end
  end

  def show_progress
    @things.each(&:display_progress)
  end

  def list
    puts "\nTask                 Progress"
    puts "-" * 40
    @things.each { |t| t.display_progress }
  end

  def find(name)
    @things.find { |t| t.name == name }
  end

  def save
    data = @things.map {|t| { name: t.name, progress: t.progress}}
    File.write(FILE_PATH, JSON.pretty_generate(data))
  end

  def load
    if File.exist?(FILE_PATH)
      data = JSON.parse(File.read(FILE_PATH))
      @things = data.map { |h| Task.new(h["name"], h["progress"])}
    else
      @things = []
    end
  end
end


