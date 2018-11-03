require_relative 'cash_register.rb'
require_relative 'transaction.rb'
require 'minitest/autorun'
require 'pry'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(1000.00)
    @transaction = Transaction.new(50)
  end

  def test_register_object
    assert_instance_of(CashRegister, @register)
  end

  def test_accept_money
    @transaction.amount_paid = 50
    register_before_money = @register.total_money
    @register.accept_money(@transaction)
    register_after_money = @register.total_money

    assert_equal(register_before_money + @transaction.amount_paid, register_after_money)
  end

  def test_change
    @transaction.amount_paid = 60
    change = @register.change @transaction

    assert_equal(change, 10)
  end

  def test_give_receipt
    assert_output("You've paid $50.\n") { @register.give_receipt @transaction}
  end

  def test_prompt_for_payment
    input = StringIO.new('55\n')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)

    assert_equal 55, @transaction.amount_paid
  end
end
