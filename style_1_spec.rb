require 'rspec'
require_relative 'captcha'

describe 'style_1' do
  context 'Given a Array of Numerals' do
    it '[1,0,1], it should return ONE + 1' do
      result = style_1([1,0,1])
      expect(result).to eq('ONE + 1')
    end
    it '[1,1,1], it should return ONE - 1' do
      result =  style_1([1,1,1])
      expect(result).to eq('ONE - 1')
    end
    it '[1,2,1], it should return ONE x 1' do
      result =  style_1([1,2,1])
      expect(result).to eq('ONE x 1')
    end

    it '[1] it should return ONE ' do
      result =  style_1([1])
      expect(result).to eq('ONE  ')
    end

    it '[1,1] it should return ONE ' do
      result =  style_1([1,1])
      expect(result).to eq('ONE - ')
    end

    it '1 it should return nil ' do
      expect {
        style_1(1)
      }.to raise_error(ArgumentError, 'Input must be an instance of array')
    end
  end
end