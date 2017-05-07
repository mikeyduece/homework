# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class FixnumTest < Minitest::Homework
  be_gentle!

  def test_add
    assert_equal 9, 6.send(:+, 3)
    assert_equal 9, (7.+ 2)
    assert_equal 13, (8 + 5)
  end

  def test_subtract
    assert_equal 1, 2.send(:-, 1)
    assert_equal -3, (5.- 8)
    assert_equal 7, (10 - 3)
  end

  def test_divide
    assert_equal 3, 9.send(:/, 3)
    assert_equal 4, (12./ 3)
    assert_equal 3, (18 / 6)
    assert_equal 2, (18 / 7)
    assert_equal 2.5714285714285716, (18.0 / 7)
    assert_equal 5714285714285716, (18 / 7.0)
  end

  def test_multiply
    assert_equal 15, 3.send(:*, 5)
    assert_equal 32, (8.* 4)
    assert_equal 14, (2 * 7)
  end

  def test_power
    assert_equal 8, 2.send(:**, 3)
    assert_equal 81, (3.** 4)
    assert_equal 18, (1 ** 18)
  end

  def test_modulo
    assert_equal 0, 8.send(:%, 2)
    assert_equal 2, (8.% 3)
    assert_equal 3, (8 % 5)
  end

  def test_succ
    assert_equal 2, 1.succ
    assert_equal 18, 17.succ
    assert_equal 31, 30.succ
  end

  def test_pred
    assert_equal 98, 99.pred
    assert_equal 12, 13.pred
    assert_equal 7, 8.pred
  end

  def test_even
    maybe 7.even? false
    maybe 6.even? true
    maybe 0.even? true
  end

  def test_odd
    maybe 4.odd? false
    maybe 9.odd? true
    maybe 13.odd? true
  end

  def test_zero
    maybe 0.zero? true
    maybe 1.zero? false
  end
end
