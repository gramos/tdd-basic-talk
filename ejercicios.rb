require 'minitest/autorun'

class Rot
  def initialize(message)
    @message = message
  end

  def encode
    @message.tr("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm")
  end  
end

class TestRot < MiniTest::Unit::TestCase
 
  def test_that_encode_a_simple_string
    rot = Rot.new("simple")
    assert_equal "fvzcyr", rot.encode
  end  

  def test_that_encode_strings_with_multiple_words
    rot = Rot.new("yet another")
    assert_equal "lrg nabgure", rot.encode
  end  
end

