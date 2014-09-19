10.times do |i|

Product.create({
  title: "Title#{i}",
  author: "Author#{i}",
  url: "Url#{i}",
  description: "Description#{i}",
  price_in_cents: i
  }
)
end