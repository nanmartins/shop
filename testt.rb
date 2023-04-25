# require 'rspotify'
# require 'dotenv/load'

# # Autentique sua aplicação com as credenciais fornecidas pelo Spotify
# RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])

# # Encontre o álbum pelo seu nome
# album = RSpotify::Album.search('The Dark Side of the Moon').first

# # Imprima algumas informações sobre o álbum
# puts "Nome do álbum: #{album.name}"
# puts "Artista: #{album.artists.first.name}"
# puts "Data de lançamento: #{album.release_date}"
# puts "Número de faixas: #{album.total_tracks}"
# puts "Capa do álbum: #{album.images.first['url']}"



require 'rspotify'
require 'dotenv/load'

# Autentique sua aplicação com as credenciais fornecidas pelo Spotify
RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])

# Encontre o artista pelo seu ID
artist = RSpotify::Artist.find('Coldplay')

# Imprima o nome do artista
puts "Nome do artista: #{artist.name}"
puts "///////////////////////////////"

# Obtenha uma lista de todos os álbuns do artista
albums = artist.albums

# Imprima o nome de cada álbum
albums.each do |album|
  puts "Nome do álbum: #{album.name}"
  puts "Release: #{album.release_date.split('-').first}"
  puts "Genre: #{album.genres}"

  puts "Tracks: "
  album.tracks.each_with_index do |track, index|
    puts "#{index + 1} - #{track.name}"
    puts "#{track.preview_url}"
  end

end
