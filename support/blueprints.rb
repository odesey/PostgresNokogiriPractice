require 'machinist/active_record'

Article.blueprint do
	title { Faker::Lorem.words(3).join(" ") }
	body { Faker::Lorem.words(100).join(" ") }

end