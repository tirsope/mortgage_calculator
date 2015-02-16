class MortgageCalculator

  attr_reader :principal
  attr_reader :interest_rate
  attr_reader :mortgage_period

  def initialize(args)
    @principal = args[:principal]
    @interest_rate = args[:interest_rate]
    @mortgage_period = args[:mortgage_period]
  end

end
