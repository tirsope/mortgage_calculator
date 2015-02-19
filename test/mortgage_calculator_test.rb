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

  def test_access_to_interest_rate_property
    assert_equal 4, @mc.interest_rate
  end

  def test_access_to_mortgage_period_property
    assert_equal 30, @mc.mortgage_period
  end

  def test_calculate_monthly_interest_rate
    assert_in_delta 0.003333333, @mc.monthly_interest_rate, 0.01
  end

  def test_calculate_number_of_payments
    assert_equal 360, @mc.number_of_payments
  end

  def test_calculate_term
    assert_in_delta 3.3134, @mc.term, 0.01
  end

end
