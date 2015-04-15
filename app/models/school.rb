class School < ActiveRecord::Base
  validates :name, :ben, presence: true

  has_many :purchases,
    class_name: "SchoolPurchase",
    primary_key: :ben,
    foreign_key: :ben


  def avg_cost
    #measured in megabits
    avg_costs = []

    self.purchases.each do |purchase|
      case purchase.measure
      when "k"
        bw = purchase.bandwidth.to_f / 1000
      when "m"
        bw = purchase.bandwidth
      when "g"
        bw = purchase.bandwidth * 1000
      when "t"
        bw = purchase.bandwidth * 1000000
      end

      avg_costs << purchase.cost.to_f / bw
    end

    avg_costs.inject(:+) / avg_costs.length
  end

end
