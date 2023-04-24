require 'rspotify'
require 'dotenv/load'

# Autentique sua aplicação com as credenciais fornecidas pelo Spotify
RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])

# Encontre o álbum pelo seu nome
album = RSpotify::Album.search('The Dark Side of the Moon').first

# Imprima algumas informações sobre o álbum
puts "Nome do álbum: #{album.name}"
puts "Artista: #{album.artists.first.name}"
puts "Data de lançamento: #{album.release_date}"
puts "Número de faixas: #{album.total_tracks}"
puts "Capa do álbum: #{album.images.first['url']}"
