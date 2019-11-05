require 'rspec'
require_relative 'captcha'

describe 'captcha' do
  context 'Given an Input String:' do
    it '1,1,1,1 is_valid_input should return true' do
      result = is_valid_input('1,1,1,1')
      expect(result).to include "Operation"
    end
    it '1,1 is_valid_input should raise Exception' do
      expect {
        is_valid_input('1,1')
      }.to raise_error(ArgumentError, 'Invalid Input')
    end

    it '1,1,1,1  captcha should return' do
      result =  captcha('1,1,1,1')
      expect(result).to eq 'ONE - 1'
    end

    it '0,1,1,1  captcha should return' do
      result =  captcha('0,1,1,1')
      expect(result).to eq '1 - ONE'
    end

    it 'Empty String  captcha should return' do
      expect {
        captcha('')
      }.to raise_error(ArgumentError, 'Input must be an instance of array')
    end
  end

end