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

User.create(name:'mitsuwo', status_id:2, email: 'test1@test.com', password: 'testest', thumbnail: "thumbnails/#{rand(0..9)}.png")
User.create(name:'kazuo', status_id:2, email: 'test2@test.com', password: 'testest', thumbnail: "thumbnails/#{rand(0..9)}.png" )
User.create(name:'mituttu', status_id:2, email: 'test3@test.com', password: 'testest', thumbnail: "thumbnails/#{rand(0..9)}.png")
User.create(name:'migfd', status_id:2, email: 'test4@test.com', password: 'testest', thumbnail: "thumbnails/#{rand(0..9)}.png")


# Univ.all.each do |univ|
#   5.times do |i|
#     post1 = Post.new(user_id: 1, univ_id: univ.id, subject: "専門英語I", title: "困ってます part#{i}", body: "全然わからん")
#     post2 = Post.new(user_id: 2, univ_id: univ.id, subject: "専門英語II", title: "困ってます part#{i}", body: "全然わからん")
#
#     comment1 = post1.comments.build
#     comment1.body = '回答1'
#     comment1.user_id = post1.user_id+1 #回答は自分以外の人がする
#
#     comment2 = post2.comments.build
#     comment2.body = '回答2'
#     comment2.user_id = post2.user_id+1
#
#     comment3 = post2.comments.build
#     comment3.body = '回答2'
#     comment3.user_id = nil
#
#
#     comment1.save
#     comment2.save
#     comment3.save
#
#     post1.save
#     post2.save
#   end
# end
