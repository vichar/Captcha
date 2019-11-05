require "readline"
require_relative 'captcha'

while (buffer = Readline.readline('> ', true))

  prompt_input = buffer.strip
  puts "Original Input '#{prompt_input}'"
  begin
    is_valid_input(prompt_input)
    puts "Operation '#{captcha(prompt_input)}'"
  rescue
    puts "Invalid Input '#{prompt_input}"
  end

end

