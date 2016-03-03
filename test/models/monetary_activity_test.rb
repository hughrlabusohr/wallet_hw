require 'test_helper'

class MonetaryActivityTest < ActiveSupport::TestCase
  def test_total_transactions
    assert_equal 3, MonetaryActivity.total_transactions
  end
  def test_calculate_balance
    assert_equal 40.00, MonetaryActivity.balance
    
  end

end
