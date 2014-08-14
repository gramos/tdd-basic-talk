# Rot 13
#
# abcdefghijklmnopqrstuvwxyz
# nopqrstuvwxyzabcdefghijklm
# 
require 'minitest/autorun'

def encrypt_rot13 string
  string.tr 'abcdefghijklmnopqrstuvwxyz', 'nopqrstuvwxyzabcdefghijklm'
end  

class TestRot < MiniTest::Unit::TestCase

  def test_hello_rot13
    assert_equal "n", encrypt_rot13("a")  
  end

  def test_encrypt_e
    assert_equal "r", encrypt_rot13("e")  
  end  

  def test_encrypt_hello
    assert_equal "uryyb", encrypt_rot13("hello")
  end  
end
