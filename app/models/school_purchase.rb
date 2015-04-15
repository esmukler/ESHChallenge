class SchoolPurchase < ActiveRecord::Base
  validates :ben, :bandwidth, :measure, :cost, presence: true

  belongs_to :school,
    class_name: "School",
    primary_key: :ben,
    foreign_key: :ben

end
