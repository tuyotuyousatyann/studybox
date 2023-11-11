require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effects = Effects.reverse
    assert_equal 'ybuR si !nuf', effects.call('Ruby is fun!')
  end
end
