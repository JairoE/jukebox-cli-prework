songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:
          - help : displays this help message
          - list : displays a list of songs you can play
          - play : lets you choose a song to play
          - exit : exits this program "
end

def list
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play
  puts "Please enter a song name or number:"
  user_response = gets.chomp

  if user_response.instance_of?(string) && songs.include?(user_response)
    puts "Playing <#{user_response}>"
  elsif user_response.instance_of?(int)
    puts "Playing <#{songs[user_response-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  help
  puts "Please enter a command:"
  command = gets.chomp

  while command != "exit"
    if command == "list"
      list
    elsif command == "play"
      play
    elsif command == "help"
      help
    elsif command == "exit"
      exit_jukebox
      break
    end
    puts "Please enter a command:"
    command = gets.chomp
  end

  
