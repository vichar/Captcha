require 'rspec'
require_relative 'captcha'

describe 'style_2' do
  context 'Given a Array of Numerals' do
    it '[1,0,1], it should return 1 + ONE' do
      result = style_2([1,0,1])
      expect(result).to eq('1 + ONE')
    end
    it '[1,1,1], it should return 1 - ONE' do
      result =  style_2([1,1,1])
      expect(result).to eq('1 - ONE')
    end
    it '[1,2,1], it should return 1 x ONE' do
      result =  style_2([1,2,1])
      expect(result).to eq('1 x ONE')
    end

    it '[1] it should return ONE ' do
      result =  style_2([1])
      expect(result).to eq('1  ')
    end

    it '[1,1] it should return ONE ' do
      result =  style_2([1,1])
      expect(result).to eq('1 - ')
    end

    it '1 it should return nil ' do
      expect {
        style_2(1)
      }.to raise_error(ArgumentError, 'Input must be an instance of array')
    end
  end
end