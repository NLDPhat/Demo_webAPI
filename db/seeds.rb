Book.delete_all
User.delete_all
User.create!(name: 'phat', email:'phatduynguyen@gmail.com', password: '1234567', token:'123')
10.times do |variable|
	author = Author.create!(name: FFaker::Name.name, email: FFaker::Internet.disposable_email )

	3.times do
		book = Book.create!(tittle: FFaker::Lorem.sentence, description: FFaker::Lorem.paragraph, author_id: author.id) 
	end
end