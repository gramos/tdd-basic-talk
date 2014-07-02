require 'minitest/autorun'

class Rot
  @@plain_chars_set = "abcdefghijklmnopqrstuvwxyz"

  def initialize(message, replace_chars_set = "nopqrstuvwxyzabcdefghijklm")
    @replace_chars_set = replace_chars_set
    @message           = message
  end

  def encode
    @message.tr @@plain_chars_set, @replace_chars_set
  end

  def decode
    @message.tr @replace_chars_set, @@plain_chars_set
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

  def test_that_decode_strings
    rot = Rot.new("lrg nabgure")
    assert_equal "yet another", rot.decode
  end

  def test_that_can_change_the_encoder
    rot = Rot.new("simple", "xbcdxfghxjklmnxpqrstxvwxyz")
    assert_equal "sxmplx", rot.encode
  end
end
