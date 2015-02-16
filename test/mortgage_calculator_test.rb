require './test_helper'
require './lib/mortgage_calculator'

class MortgageCalculatorTest < Minitest::Test

  def setup
    @mc = MortgageCalculator.new(principal: 100000, interest_rate: 4, mortgage_period: 30)
  end

  def test_mc_instance
    assert_instance_of MortgageCalculator, @mc, "mc expected to be an instance of MortgageCalculator Class"
  end

  def test_access_to_principal_property
    assert_equal 100000, @mc.principal
  end

end
