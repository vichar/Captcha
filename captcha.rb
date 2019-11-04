# @param [Object] numeral
def transcribe (numeral)
  symbols = {
      0 => 'ZERO',
      1 => 'ONE',
      2 => 'TWO',
      3 => 'THREE',
      4 => 'FOUR',
      5 => 'FIVE',
      6 => 'SIX',
      7 => 'SEVEN',
      8 => 'EIGHT',
      9 => 'NINE'
  }
  symbols[numeral]
end

# @param [Object] numeral
def translate_operator_code (numeral)
  operators = {
      0 => '+',
      1 => '-',
      2 => 'x'
  }
  operators[numeral]
end

def style_1(operation)
  unless operation.instance_of?(Array)
    raise ArgumentError.new('Input must be an instance of array')
  end
  "#{transcribe(operation[0])} #{translate_operator_code(operation[1])} #{operation[2]}"
end

def style_2(operation)
  unless operation.instance_of?(Array)
    raise ArgumentError.new('Input must be an instance of array')
  end
  "#{operation[0]} #{translate_operator_code(operation[1])} #{transcribe(operation[2])}"
end

def is_valid_input(input_text)
  if input_text.split(',').length == 4
    "Operation '#{captcha(input_text)}'"
  else
    "Invalid Input '#{input_text}'"
  end
end

def style (style_code)
  style_codes = {1 => method(:style_1), 0 => method(:style_2)}
  style_codes[style_code]
end

def captcha (input_text)
  split_input = input_text.split(',').map(&:strip).map(&:to_i)
  format_code = split_input[0].to_i
  operation = split_input.slice(1, 3)
  formatter = style(format_code)

  formatter.call(operation)
end

