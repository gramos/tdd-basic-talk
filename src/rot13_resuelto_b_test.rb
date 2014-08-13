# Rot 13
#
# abcdefghijklmnopqrstuvwxyz
# nopqrstuvwxyzabcdefghijklm
# 
require 'minitest/autorun'

def encrypt_rot13(msg)
  msg.split("").map do |c| 
     char_number = ( c.ord + 13 ) % 122 
     char_number < 97 ? (char_number + 96).chr : char_number.chr 
  end.join("")
end  
  
class TestRot < MiniTest::Unit::TestCase

  def test_hello_rot13
    assert_equal "uryyb", encrypt_rot13("hello")  
  end

  def test_encrypt_yani
    assert_equal "lnav", encrypt_rot13("yani")
  end  
end
