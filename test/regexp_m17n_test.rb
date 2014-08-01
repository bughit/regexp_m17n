# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|

      #Encoding::ConverterNotFoundError: code converter not found (UTF-8 to ISO-2022-JP-2)
      encoded = '.'.encode(enc) rescue nil

      assert RegexpM17N.non_empty?(encoded) if encoded
    end
  end
end
