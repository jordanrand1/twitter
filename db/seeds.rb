5.times do |i|
  User.create(email: "User_#{i}@test.com", password: 'password')

  5.times do |j|
    User.find(i + 1).posts.create(content: "User #{i} tweet #{j}")

    5.times do |k|
      Post.find(i + 1).comments.create(message: "User #{i} post #{j} comment #{k}", user_id: i)
    end
  end
end