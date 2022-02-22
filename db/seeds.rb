# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destorying astronauts'
Astronaut.destroy_all

claudio = User.first
svet = User.last

puts 'creating astronauts'
Astronaut.create(name: 'Neil Armstrong', bio: 'Neil Alden Armstrong (August 5, 1930 – August 25, 2012) was an American astronaut, aeronautical engineer, and the first human being to walk on the Moon. He was also a naval aviator, test pilot, and university professor.', nationality: 'US', time_slot: Date.today, user_id: claudio.id)
Astronaut.create(name: 'William Anders', bio: "William Alison Anders (born October 17, 1933) is a retired United States Air Force major general, former electrical engineer, nuclear engineer, NASA astronaut, and businessman. In December 1968, as a crew member of Apollo 8, he was one of the first three people to leave low Earth orbit and travel to the Moon. Along with fellow astronauts Frank Borman and Jim Lovell, Anders circled the Moon ten times, and broadcast live images and commentary back to Earth. During one of the mission's lunar orbits he photographed the iconic image Earthrise", nationality: 'US', time_slot: Date.today - 1, user_id: svet.id)
Astronaut.create(name: 'Yuri Gagarin', bio: "Yuri Alekseyevich Gagarin (9 March 1934 – 27 March 1968) was a Soviet pilot and cosmonaut who became the first human to journey into outer space. Traveling in the Vostok 1 capsule, Gagarin completed one orbit of Earth on 12 April 1961. By achieving this major milestone in the Space Race he became an international celebrity, and was awarded many medals and titles, including Hero of the Soviet Union, his nation's highest honour.", nationality: 'RU', time_slot: Date.today - 2, user_id: claudio.id)
Astronaut.create(name: 'Satoshi Furukawa', bio: "Satoshi Furukawa (Furukawa Satoshi, born April 4, 1964) is a Japanese surgeon and JAXA astronaut. Furukawa was assigned to the International Space Station as a flight engineer on long-duration missions Expedition 28/29, lifting off 7 June 2011 and returning 22 November 2011.", nationality: 'JP', time_slot: Date.today + 3, user_id: svet.id)
