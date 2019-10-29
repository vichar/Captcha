require 'rspec'
require_relative 'captcha'
describe 'transcribe' do

  context 'Given Number Then' do
    it 'Should return Number in Word' do
      word = transcribe('1')
      expect(word).to eq('ONE')
    end
  end
end