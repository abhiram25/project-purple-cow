# Generate 5 items
5.times do |n|
  Item.create!(name: "Item #{n}")
end
