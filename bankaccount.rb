class BankAccount

  @@interest_rate = 1.02
  @@accounts = []

def initialize

  @balance = 0

end


def balance #READER
  @balance
end

def balance=(amount) #WRITER
  @balance = amount

end



def deposit(amount)

  @balance += amount.to_i

end

def withdraw(amount)

  @balance -= amount.to_i

end


def self.create
  new_account= BankAccount.new
  @@accounts << new_account
  new_account

end




def self.total_funds
  balances = []
  @@accounts.each do |account|
    balances << account.balance
  end

  puts balances.sum

end


def self.interest_time

  puts @@accounts
  puts "****"

  @@accounts.each do |account|
    account.balance=(account.balance*@@interest_rate)
    #THIS 'balance=' is a writer method because now we are overriding the balance
    #therefore we need to define a method that accepts user argument to override balance

  end

  puts @@accounts

  end

end


my_account = BankAccount.create
your_account = BankAccount.create
puts my_account.balance
puts "------"
puts BankAccount.total_funds
puts "------"
my_account.deposit(200)
puts my_account.inspect
your_account.deposit(1000)
puts your_account.inspect
puts my_account.balance
puts your_account.balance
puts "-----!!!!------"
puts BankAccount.total_funds
puts BankAccount.interest_time


#because we are in a class method and we want to effect change in an instance variable,
#the only way i can reach it is by using an instance method
#since i am going through each individual account and changing it


#writer methods typically overide the variabele
