require "readline"
require_relative 'captcha'

while (buffer = Readline.readline('> ', true))

  prompt_input = buffer.strip
  puts "Original Input '#{prompt_input}'"

  if is_valid_input?(prompt_input)
    puts "Operation '#{captcha(prompt_input)}'"
  else
    puts "Invalid Input '#{prompt_input}'"
  end

end

