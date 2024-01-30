# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#Let's do this
#Learning how to navigate hash
first = blockchain[0]
puts " first is #{first}"

#how to get inside hash?
first_partial = first["to_user"]
puts "inside the hash is #{first_partial}"

#Elegant way
elegant  = blockchain[1]["to_user"]
puts "Elegant output is #{elegant}"

#high level thoughts
#-loop through every step of blockchain
#Identify all users, create array that captures all users that have received or sent money. Combine into 1 array
#add when receive money
#deduct when sends money
#total = 0 + sum(add) - sum(deduct)
#Need way to id all users so we can total their wallets

#_________________________________________


puts "array length is #{blockchain.length}"
#ID all users from blockchain array

#Initialize balances
ben_balance = 0
brian_balance = 0
evan_balance = 0
anthony_balance = 0

=begin
transaction = 0
loop do
  if blockchain.length == transaction
    break
  end

  amount = blockchain[transaction]["amount"]
  puts "amount is #{amount}"
  transaction = transaction +1
  puts "transaction is #{transaction}"
end
=end

for transaction in blockchain
  from_user = transaction["from_user"]
  amount = transaction["amount"]
  to_user = transaction ["to_user"]

  #deduct sent money
  if from_user == "ben"
    ben_balance = ben_balance - amount
    #puts "Ben lost #{amount} coins"
  elsif from_user == "brian"
    brian_balance = brian_balance - amount
  elsif from_user == "evan"
    evan_balance = evan_balance - amount
  elsif from_user == "anthony"
    anthony_balance = anthony_balance - amount
  end

  #add received money
  if to_user == "ben"
    ben_balance = ben_balance + amount
    #puts "Ben gained #{amount} coins"
  elsif to_user == "brian"
    brian_balance = brian_balance + amount
  elsif to_user == "evan"
    evan_balance = evan_balance + amount
  elsif to_user == "anthony"
    anthony_balance = anthony_balance + amount
  end
  

  #puts "amount is #{amount}"
  #puts "index is #{transaction}"
end

#for transaction in blockchain
 # users = blockchain[transaction]
  #puts "users are #{users}"
#end



#output balances
puts "Ben's KelloggCoin balanace is #{ben_balance}"
puts "Brian's KelloggCoin balanace is #{brian_balance}"
puts "Evan's KelloggCoin balanace is #{evan_balance}"
puts "Anthony's KelloggCoin balanace is #{anthony_balance}"