Booking.destroy_all
puts "Bookings destroyed"

Chalet.destroy_all
puts "Chalets destroyed"

User.destroy_all
puts "Users destroyed"

user = User.create!(email: 'registimothee@gmail.com', password: "123456")
puts "#{User.count} user(s) created!"

chalet = Chalet.create!(name: 'Chalet Sainte-Foy', user_id: "#{user.id}")
puts "#{chalet.name} created!"

booking1 = Booking.create!(chalet_id: chalet.id, start_date: Date.new(2020,9,5), end_date: Date.new(2020,9,12), name: "Régis")
booking2 = Booking.create!(chalet_id: chalet.id, start_date: Date.new(2020,9,19), end_date: Date.new(2020,9,26), name: "P-E")
puts "#{Booking.all.count} bookings created!"
