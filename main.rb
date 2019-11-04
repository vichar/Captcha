require "readline"
require_relative 'captcha'

while (buffer = Readline.readline('> ', true))

  prompt_input = buffer.strip
  puts "Original Input '#{prompt_input}'"
  is_valid_input(prompt_input)

end

