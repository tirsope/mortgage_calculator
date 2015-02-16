# Mortgage Calculator

We will be creating a mortgage calculator that will calculate
the monthly payment of a mortgage. The mortgage calculator will
take a principal amount, an interest rate and the period of the loan.

### Formula to calculate monthly payment
[monthly payment](http://www.wikihow.com/Calculate-Mortgage-Payments)

```
                  monthly_interest_rate * term
mp = principal X -------------------------------
                             term - 1


* In order to calculate monthly payment we need to find
the following:

monthly_interst_rate = (interest_rate / 100) / 12
term = (1 + monthly_interest_rate) ** number_of_payments
number_of_payments = length_of_loan * 12

```

### Example

```ruby

mc = MortgageCalculator.new(principal: 100000, interest_rate: 4, mortgage_period: 30)

mc.principal #=> 100000
mc.interest_rate #=> 4
mc.mortgage_period #=> 30
mc.monthly_interest_rate #=> 0.003333333
mc.number_of_payments #=> 360
mc.term #=> 3.3134
mc.monthly_payment #=> 477.42

```
# Bonus

Calculate the [total cost of the loan](http://www.calcunation.com/calculators/business%20and%20finance/mortgage-total-cost.php)

```

            Monthly Interest Rate * principal
--------------------------------------------------------  X  total_months_on_loan
1 - (1 + Monthly Interest Rate) ** -total_months_on_loan

```

```ruby
mc = MortgageCalculator.new(principal: 100000, interest_rate: 4, mortgage_period: 30)
mc.cost_of_loan #=> 171869.51
```

