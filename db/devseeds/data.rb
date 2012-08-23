clothing = Category.create({
														name: 'Clothings',
															description: %Q(
																							<div>		
																								<strong>Clothings Catalog</strong>
																								<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
																							</div>		)
														})

accessories = Category.create({
															name: 'Accessories',
															description: %Q(
																							<div>		
																								<strong>Office Accessories Catalog</strong>
																								<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
																							</div>		)
															})

electricity = Category.create({
															name: 'Electricity',
															description: %Q(
																							<div>		
																								<strong>Electricity Catalog</strong>
																								<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
																							</div>		)
															})

%w(Shoes Shirt Dress Pant).each do |name|
cat = Category.create({
												name: name,
												parent: clothing,
												description: %Q(
														<div>		
															<strong>#{name} Catalog</strong>
															<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
														</div>		)
												})
	20.times do
		product = Product.create({
			name: "#{Faker::Company.name} #{name}",
			category: cat,
			price: rand(100),
			description: %Q(
					<div>
						<strong>#{Faker::Lorem.words.join(' ')}</strong>
						<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
					</div>
				)
			})
		2.times do
			Image.create({
				imageable: product,
				file: File.open("#{Rails.root}/db/data/#{rand(10)}.jpg")
				})
		end
	end

end

%w(Pen Desk Paper Magazine).each do |name|
cat = Category.create({
												name: name,
												parent: accessories,
												description: %Q(
														<div>		
															<strong>#{name} Catalog</strong>
															<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
														</div>		)
												})
	20.times do
		product = Product.create({
			name: "#{Faker::Company.name} #{name}",
			category: cat,
			price: rand(100),
			description: %Q(
					<div>
						<strong>#{Faker::Lorem.words.join(' ')}</strong>
						<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
					</div>
				)
			})
		2.times do
			Image.create({
				imageable: product,
				file: File.open("#{Rails.root}/db/data/#{rand(10)}.jpg")
				})
		end
	end
end

%w(Phone Tablet Computer).each do |name|
cat = Category.create({
												name: name,
												parent: electricity,
												description: %Q(
														<div>		
															<strong>#{name} Catalog</strong>
															<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
														</div>		)
												})
	20.times do
		product = Product.create({
			name: "#{Faker::Company.name} #{name}",
			category: cat,
			price: rand(100),
			description: %Q(
					<div>
						<strong>#{Faker::Lorem.words.join(' ')}</strong>
						<p>#{Faker::Lorem.paragraphs.join('</p><p>')}</p>
					</div>
				)
			})
		2.times do
			Image.create({
				imageable: product,
				file: File.open("#{Rails.root}/db/data/#{rand(10)}.jpg")
				})
		end
	end

end
