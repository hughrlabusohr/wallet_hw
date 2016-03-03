class MonetaryActivity < ActiveRecord::Base

  def self.total_transactions
    MonetaryActivity.count
  end

  def self.balance
    balance = []
    self.all.each do |x|
      array << x.amount
    end
    balance.reduce(0) {|x,y| x + y}
  p "Your balance is #{balance}"
  end

  def negative_balance_warning
    p "You have been fiscally irresponisble! Rectify this immediately" if self.balance < 0
  end

  def

  end
end
