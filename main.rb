require 'colorize'
require_relative 'git'

class Main
  include Git

  def puts_git(cmd)
    puts `git #{cmd} -h`
  end

  def self.menu
    puts 'Main Menu'.colorize(:yellow)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Exit'.colorize(:cyan)
    choice = gets.to_i
    case choice
    when 1
      puts "Enter a gets command".colorize(:green)
      Git.puts_git(gets.strip)
    when 2
      exit
    else
      puts 'Invalid choice'.colorize(:red)
      menu
    end
  end
end

Main.menu
