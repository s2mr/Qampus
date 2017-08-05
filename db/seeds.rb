# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

univs = ['岩手県立大学', '盛岡大学', '岩手大学', '東京大学']
univs.each do |univ|
  Univ.create(name: univ)
end

statuses = ['高校生', '大学1年生', '大学2年生', '大学3年生', '大学4年生', '修士1年生', '修士2年生', '社会人']
statuses.each do |status|
  Status.create(name: status)
end