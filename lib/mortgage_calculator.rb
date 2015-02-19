class MortgageCalculator

  attr_reader :principal, :interest_rate, :mortgage_period

  def initialize(args)
    @principal = args[:principal]
    @interest_rate = args[:interest_rate]
    @mortgage_period = args[:mortgage_period]
  end

  def monthly_interest_rate
    ((interest_rate.to_f / 100) / 12)
  end

  def number_of_payments
    mortgage_period * 12
  end

  def term
    ((1 + monthly_interest_rate) ** number_of_payments)
  end

  def monthly_payment
    principal * monthly_interest_rate * term / (term - 1)
  end

  def cost_of_loan
    monthly_interest_rate * principal * number_of_payments / (1 - (1 + monthly_interest_rate) ** -number_of_payments)
  end

end
