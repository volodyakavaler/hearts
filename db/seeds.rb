# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sick.create!(
  first_name: 'Пупкин',
  last_name: 'Василий',
  patronymic: 'Петрович',
  date_of_birth: '31.12.1989',
  address: 'г. Москва, пр-т Вернадского, 15к9, кв. 8',
  phone: '89099881289',
  policy: '8900009879129999',
  passport: '4566789678',
  sex: 'М'
)
Sick.create!(
  first_name: 'Петрова',
  last_name: 'Ирина',
  patronymic: 'Степановна',
  date_of_birth: '04.03.1965',
  address: 'г. Москва, ул. Б.Якиманка, 55к1, кв. 89',
  phone: '89100813277',
  policy: '8900009879120011',
  passport: '4566787199',
  sex: 'Ж'
)
Sick.create!(
  first_name: 'Степанов',
  last_name: 'Акакий',
  patronymic: 'Акакиевич',
  date_of_birth: '10.09.1977',
  address: 'г. Москва, пр-т Мира, 109, кв. 100',
  phone: '89100813277',
  policy: '8900009879029900',
  passport: '4726789670',
  sex: 'М'
)
