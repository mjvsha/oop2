class BankAccount

  @@interest_rate = 0.02
  @@accounts = []

def initialize

  @balance = 0

end


def balance
  @balance
end


def deposit(amount)

  @balance += amount

end

def withdraw(amount)

  @balance -= amount

end


def self.create
  new_account= BankAccount.new
  @@accounts << new_account
  new_account

end


def self.total_funds
  return @@accounts.sum

end


def interest_time

  puts @@accounts

  @@accounts.each do |account|
    account = account*@@interest_rate + account

  end

  puts @@accounts

  end

end
