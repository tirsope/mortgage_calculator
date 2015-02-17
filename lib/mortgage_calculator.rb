class MortgageCalculator

  attr_reader :principal
  attr_reader :interest_rate
  attr_reader :mortgage_period

  def initialize(args)
    @principal = args[:principal]
    @interest_rate = args[:interest_rate]
    @mortgage_period = args[:mortgage_period]
  end

  def monthly_interest_rate
    ((interest_rate / 100.0) / 12.0).round(9)
  end

end
