class Task
  attr_accessor :name, :progress

  def initialize(name, progress = 0)
    @name = name
    @progress = progress
  end

  def update_progress(percent)
    @progress = [[percent, 0].max, 100].min
  end

  def display_progress
    bar_length = 20
    filled = (bar_length * progress / 100.0).round
    bar = "=" * filled + " " * (bar_length - filled)
    puts "#{name}: [#{bar}] #{@progress}%"
  end
end
