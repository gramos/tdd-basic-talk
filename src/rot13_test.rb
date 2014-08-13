# Este lo resolvimos en la charla de la meetup de rubylit
# el 3/7/2014

require 'minitest/autorun'

def rot13(c)
  c.tr "abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm" 
end

class TestRot < MiniTest::Unit::TestCase

  def test_encrypt_a
    assert_equal "n", rot13("a")
  end

  def test_encrypt_b
    assert_equal "o", rot13("b")
  end

  def test_encrypt_n
    assert_equal "a", rot13("n")
  end

end
