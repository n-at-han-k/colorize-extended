# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/colorize_extended'

class TestColorizeExtended < Minitest::Test
  def test_on_blue
    assert_equal 'hello'.on_blue, 'hello'.on.blue
  end

  def test_red_on_blue
    assert_equal 'hello'.red.on_blue, 'hello'.red.on.blue
  end

  def test_on_green
    assert_equal 'hello'.on_green, 'hello'.on.green
  end

  def test_chained_with_mode
    assert_equal 'hello'.red.on_blue.bold, 'hello'.red.on.blue.bold
  end

  def test_chained_with_underline
    assert_equal 'hello'.red.on_cyan.underline, 'hello'.red.on.cyan.underline
  end

  def test_on_with_alias_grey
    assert_equal 'hello'.on_grey, 'hello'.on.grey
  end

  def test_on_with_alias_gray
    assert_equal 'hello'.on_gray, 'hello'.on.gray
  end

  def test_on_light_colors
    assert_equal 'hello'.on_light_blue, 'hello'.on.light_blue
    assert_equal 'hello'.on_light_red, 'hello'.on.light_red
    assert_equal 'hello'.on_light_green, 'hello'.on.light_green
  end

  def test_on_responds_to_colors
    proxy = 'hello'.on
    assert proxy.respond_to?(:blue)
    assert proxy.respond_to?(:red)
    assert proxy.respond_to?(:green)
    assert proxy.respond_to?(:grey)
    refute proxy.respond_to?(:nonexistent_color)
  end

  def test_on_unknown_color_raises
    assert_raises(NoMethodError) { 'hello'.on.nonexistent_color }
  end

  def test_full_chain_red_on_blue
    expected = "\033[0;31;44mThis is a red string on a blue background\033[0m"
    assert_equal expected, 'This is a red string on a blue background'.red.on.blue
  end
end
