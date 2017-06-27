require 'test/unit'
require_relative 'Classmate'

class AccountTest <Test::Unit::TestCase
  def Test1
    a = Account.new
    a.deposit 100
    a.withdraw 30
    assert_equal(70, a.balance)
  end

  def Test2
    a = Account.new
    a.deposit 50
    a.withdraw 80
    assert_equal(-30, a.balance)
  end
end
