class Account
  attr_reader :name
  attr_accessor :balance

  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private
  def pin
    @pin = 1234
  end
  
  private 
  def pin_error
    "Access denied: incorrect PIN."
  end

  public
  def display_balance(pin)
    if pin == @pin
      puts "Balance: $#{balance}"
    else
       pin_error
    end
  end

  public 
  def withdraw(pin_number, amount)
    if pin_number == pin
      if @balance < amount
        puts "You are trying to overwithdraw. Your balance: $#{@balance}."      
      else
        puts "Withdrew #{amount}. New balance: $#{@balance}."     
     end
    else
      pin_error
    end
  end

  public
  def deposit(pin_number, amount)
    if pin_number == pin
       @balance += amount  
    else
      pin_error
    end
  end
end 

class CheckingAccount < Account
end
class SavingsAccount < Account
end

checking_account = CheckingAccount.new("Jamuna",1000)