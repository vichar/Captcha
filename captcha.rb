def transcribe (numeral)

  symbols = {
      '0' => 'ZERO',
      '1' => 'ONE',
      '2' => 'TWO',
      '3' => 'THREE',
      '4' => 'FOUR',
      '5' => 'FIVE',
      '6' => 'SIX',
      '7' => 'SEVEN',
      '8' => 'EIGHT',
      '9' => 'NINE'
  }
  symbols[numeral]
end

def translate_operator_code (numeral)
  operators = {
      '0' => '+',
      '1' => '-',
      '2' => 'x'
  }
  operators[numeral]
end

def style_1(operation)
  "#{transcribe(operation[0])} #{translate_operator_code(operation[1])} #{operation[2]}"
end

def style_2(operation)
  "#{operation[0]} #{translate_operator_code(operation[1])} #{transcribe(operation[2])}"
end

def is_valid_input?(input_text)
  input_text.split(',').length <= 4
end

def captcha (input_text)
  split_input = input_text.split(',').map(&:strip)
  formatter = split_input[0].to_i
  operation = split_input.slice(1, 3)

  if formatter == 1
    output = style_1(operation)
  else
    output =  style_2(operation)
  end

  output
end