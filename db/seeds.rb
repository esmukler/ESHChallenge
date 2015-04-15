require_relative 'mongo_seeds'

connection = ActiveRecord::Base.connection

statements = File.readlines('db/seed.sql')

ActiveRecord::Base.transaction do
  statements.each do |statement|
    connection.execute(statement)
  end
end

mongo_seeds.each do |seed|
  school = School.create!(name: seed["name"], ben: seed["ben"])
  seed["purchases"].each do |purch|
    purchase = school.purchases.create!(
      ben: seed["ben"], bandwidth: purch[:bandwidth],
      measure: purch[:measure],
      cost: purch[:cost]
    )
  end
end
