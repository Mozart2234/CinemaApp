# poster_name is a column as not part of movie model
# it is only used for to upload an image with active_storage
movies = [
  {
    budget: 200_000_000,
    director: 'Dzhanik Fayziev',
    imbd_ranking: 7.2,
    plot: 'Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s and finds a formidable foe by the name of the Cheetah.',
    revenue: 131400000,
    running_time: 151,
    title: 'Wonder Woman 1984',
    poster_name: 'wonder_woman.jpg'
  },
  {
    budget: 150_000_000,
    director: 'Dzhanik Fayziev',
    imbd_ranking: 8.4,
    plot: 'Joe Gardner is a middle school teacher with a love for jazz music. After a successful gig at the Half Note Club, he suddenly gets into an accident that separates his soul from his body and is transported to the You Seminar, a center in which souls develop and gain passions before being transported to a newborn child. Joe must enlist help from the other souls-in-training, like 22, a soul who has spent eons in the You Seminar, in order to get back to Earth.',
    revenue: 123400000,
    running_time: 102,
    title: 'Soul',
    poster_name: 'soul.jpg'
  },
  {
    budget: 150_000_000,
    director: 'Fayziev',
    imbd_ranking: 4.9,
    plot: 'Cosmoball is a mesmerizing intergalactic game of future played between humans and aliens at the giant extraterrestrial ship hovering in the sky over Earth. A young man with enormous power of an unknown nature joins the team of hot-headed superheroes in exchange for a cure for his mother’s deadly illness. The Four from Earth will fight not only to defend the honor of their home planet in the spectacular game, but to face the unprecedented threat to the Galaxy and embrace their own destiny.',
    revenue: 0,
    running_time: 115,
    title: 'Cosmoball',
    poster_name: 'cosmoball.jpg'
  },
  {
    budget: 150_000_000,
    director: 'Fayziev',
    imbd_ranking: 7.4,
    plot: 'Cosmoball is a mesmerizing intergalactic game of future played between humans and aliens at the giant extraterrestrial ship hovering in the sky over Earth. A young man with enormous power of an unknown nature joins the team of hot-headed superheroes in exchange for a cure for his mother’s deadly illness. The Four from Earth will fight not only to defend the honor of their home planet in the spectacular game, but to face the unprecedented threat to the Galaxy and embrace their own destiny.',
    revenue: 27900000,
    running_time: 107,
    title: 'Vanguard',
    poster_name: 'vanguard.jpg'
  },
  {
    budget: 0.0,
    director: 'Thomas Astruc',
    imbd_ranking: 8.6,
    plot: 'During a school field trip, Ladybug and Cat Noir meet the American superheroes, whom they have to save from an akumatised super-villain. They discover that Miraculous exist in the United States too.',
    revenue: 0,
    running_time: 0,
    title: 'Miraculous World: New York, United HeroeZ',
    poster_name: 'miraculous.jpg'
  }
]

puts "01 - Creating movies"
movies.each do |movie_h|
  poster_name = movie_h.delete(:poster_name)
  movie = Movie.find_or_create_by(movie_h)
  next unless movie.persisted?

  path = Rails.root.join('db', 'seeds', 'static', 'movies', poster_name)
  movie.poster.attace(io: File.open(path, file_name: poster_name))
  puts "Movie: #{movie.title} was created"
end
puts "Movies Created"
