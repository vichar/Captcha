require 'rspec'
require_relative 'captcha'
describe 'transcribe' do
  context 'Given Number' do
    it '1, it should return Number in Word' do
      word = transcribe(1)
      expect(word).to eq('ONE')
    end
    it '-1 it should return Null' do
      word = transcribe(-1)
      expect(word).to be nil
    end
  end
end