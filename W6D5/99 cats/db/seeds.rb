# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
fred = Cat.create!({birth_date: '2020/2/20', color: 'red', name: 'Fred', sex: 'M'})
star = Cat.create!({birth_date: '2020/4/20', color: 'yellow', name: 'Star', sex: 'F'})
wolf = Cat.create!({birth_date: '2020/1/20', color: 'blue', name: 'Wolf', sex: 'M'})
erica = Cat.create!({birth_date: '2020/3/20', color: 'blue', name: 'Erica', sex: 'F'})
danielle = Cat.create!({birth_date: '2020/7/20', color: 'red', name: 'Danielle', sex: 'F'})