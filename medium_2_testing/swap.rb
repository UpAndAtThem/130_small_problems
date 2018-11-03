require_relative 'text.rb'
require 'minitest/autorun'
require 'pry'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('./text.txt', 'r')
  end

  def test_swap
    actual_result = Text.new(@file.read).swap('a', 'e')
    expected_result = <<~TEXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT
    
    assert_equal(actual_result, expected_result)
  end

  def test_word_count
    text_obj = Text.new @file.read
    
    assert_equal(text_obj.word_count, 72)
  end

  def teardown
    @file.close
  end
end
