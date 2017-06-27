require 'rubygems'
require 'bundler/setup'
class Bpi
$mon = 5689.85
def banner
  puts '=' *112
  puts "Welcome to BPI!".upcase.center(112, '=')
  puts "=" *112
end

def intro
  banner
  puts "Our system is now accessible.
  We would like to apologize for the inconvenience we have made over the past few days."
  puts " "
  puts "Please insert your ATM card. [Press 'i']"
  $ins = gets.chomp.downcase
end

def password
  require 'io/console'
  puts "Please enter your 4-digit password."
  puts "Shield the screen and keyboard so anyone waiting to use the ATM cannot see you enter your PIN or transaction amount."
  $pass = STDIN.noecho(&:gets).chomp
end

def withdraw
  puts "Please enter the amount: "
  $cash = gets.chomp.to_f
    if $cash <= $mon
      puts "Please get your P#{$cash}. Thank You!"
      $mon = $mon - $cash
    else
      puts "You don't have enough balance to perform this transaction. Please try again."
    end
end

def balance
  puts "Savings or Current?"
  $acc = gets.chomp.downcase
  if $acc=='savings' || $acc=='Savings'
    puts "You have P#{$mon} remaining balance."
  else $acc=='current' || $acc=='Current'
    puts "You have P#{$mon} remaining balance."
  end
end

def transfer
  puts "Merchant/Company Name: "
  $comp = gets.chomp.upcase
  puts "Amount: "
  $amt = gets.chomp.to_f
    if $amt <= $mon
      puts "Success! P#{$amt} had been transferred to #{$comp}"
      $mon = $mon - $amt
    else
      puts "You don't have enough balance to perform this transaction. Please try again."
    end
end

def service
  puts "Choices: "
  puts "1 Withdraw"
  puts "2 Check Account Balance"
  puts "3 Funds Transfer"
  puts "What would you like to do?[Enter the number]"
  $choice = gets.chomp.to_i
end


  def bpi_app
    intro
    password
    service
    while $ins == "i"
        case $choice
        when 1
          withdraw
          puts "Would you like to have another transaction? [y/n]"
          sss = gets.chomp.downcase
          if sss=='y'
            system 'cls'
            banner
            service
          else
            puts "Thank you! Have a nice day!"
            break
          end
        when 2
          balance
          puts "Would you like to have another transaction? [y/n]"
          sss = gets.chomp.downcase
          if sss=='y'
            system 'cls'
            banner
            service
          else
            puts "Thank you! Have a nice day!"
            break
          end
        when 3
          transfer
          puts "Would you like to have another transaction? [y/n]"
          sss = gets.chomp.downcase
          if sss=='y'
            system 'cls'
            banner
            service
          else
            puts "Thank you! Have a nice day!"
            break
          end
        end
      end
    end
  end
