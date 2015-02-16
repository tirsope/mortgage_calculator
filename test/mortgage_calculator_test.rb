require './test_helper'
require './lib/mortgage_calculator'

class MortgageCalculatorTest < Minitest::Test

  def setup
    @mc = MortgageCalculator.new(principal: 100000, interest_rate: 4, mortgage_period: 30)
  end

  def test_mc_instance
    assert_instance_of MortgageCalculator, @mc
  end
end
