require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Destination.destroy_all
Book.destroy_all
Review.destroy_all
ReadingList.destroy_all
User.destroy_all

Destination.create(name: 'Yellowstone National Park', country: "THE United States of America", continent: "North America", description: "Yellowstone was the first official National Park in United States History. Founded by Teddy Roosevelt after he hunted down and killed a bear with his bare hands and strong teeth. Mt. Rushmore was carved into a mountian here with dyanmite. There are animal. Less than there used to be, due to the government subsidizing the extinction of the wild buffalo during the second half of the nineteenth century to aid their quest to destroy the native populations of the west. Maybe there's cougars here too. Bring a book, nothing else to do. You're in the middle of nothing.")
Destination.create(name: 'Dunedin', country: "New Zealand", continent: "Australia", description: "Dunedin is a city in New Zealand, at the head of Otago Harbour on the South Island’s southeast coast. It's known for its Scottish and Maori heritage, Victorian and Edwardian architecture, and a large student population. Hiking and cycling trails crisscross the dramatic landscape of the adjoining Otago Peninsula, home to colonies of albatross, sea lions and rare yellow-eyed penguins.")
Destination.create(name: 'Mexico City', country: "Mexico", continent: "North America", description: "Mexico City is the densely populated, high-altitude capital of Mexico. It's known for its Templo Mayor (a 13th-century Aztec temple), the baroque Catedral Metropolitana de México of the Spanish conquistadors and the Palacio Nacional, which houses historic murals by Diego Rivera. All of these are situated in and around the Plaza de la Constitución, the massive main square also known as the Zócalo.")
Destination.create(name: 'Hanoi', country: "Vietnam", continent: "Asia", description: "Hanoi, the capital of Vietnam, is known for its centuries-old architecture and a rich culture with Southeast Asian, Chinese and French influences. At its heart is the chaotic Old Quarter, where the narrow streets are roughly arranged by trade. There are many little temples, including Bach Ma, honoring a legendary horse, plus Đồng Xuân Market, selling household goods and street food.")
Destination.create(name: 'São Paulo', country: "Brazil", continent: "South America", description: "São Paulo, Brazil’s vibrant financial center, is among the world's most populous cities, with numerous cultural institutions and a rich architectural tradition. Its iconic buildings range from its neo-Gothic cathedral and the 1929 Martinelli skyscraper to modernist architect Oscar Niemeyer’s curvy Edifício Copan. The colonial-style Pátio do Colégio church marks where Jesuit priests founded the city in 1554.")
Destination.create(name: 'Bruges', country: "Belgium or maybe The Netherlands. Not Sure.", continent: "Europe", description: "Where is this place? Bruges skyrocketed to stardom after a Colin Farrell movie about it came out, and the hipsters decided to make it a big time vacation destination in Europe. It's probably in Belgium. Or not? Might be Holland. Where is Antwerp? I think it's in that same country. There's a big clocktower and likely windmills and fields with sunflowers. Bring a book; this place might not even exist.")
Destination.create(name: 'Mombasa', country: "Kenya", continent: "Africa", description: "Like getting kidnapped by religious separatists? Mombasa is just the place for you. 5 tourists were just kidnapped here last year in 2018. 2 of them have yet to be returned or rescued. Otherwise, it's a beautiful seaside port with a charming old town district and varied international cuisine. Queen Elizabeth 2 was visiting Mombada when she found out she'd become queen. Bring a book, you might need it in the hole your kidnappers throw you in.")


18.times do
  Book.create(title: Faker::Book.title, author: Faker::Book.author, description: Faker::Lorem.paragraph, publication_date: rand(1700..2019), genre: Faker::Book.genre)
end
