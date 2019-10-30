require 'rspec'
require_relative 'captcha'

describe 'translate_operator_code' do
  context 'Given Number' do
    it '0, it should return +' do
      operator = translate_operator_code(0)
      expect(operator).to eq('+')
    end
    it '1 it should return -' do
      operator = translate_operator_code(1)
      expect(operator).to eq('-')
    end
    it '2 it should return x' do
      operator = translate_operator_code(2)
      expect(operator).to eq('x')
    end
    it '-1 it should return Null' do
      operator = translate_operator_code(-1)
      expect(operator).to be nil
    end
  end
end