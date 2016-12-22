song_list = [
    ['IV Sweatpants', 'Because The Internet', 'Childish Gambino'],
    ['Angels', 'Coloring Book', 'Chance the Rapper'], 
    ['Alligator', 'SAAAB Stories producted by Harry Fraud', 'Action Bronson']
]

song_list.each do |title, album, artist|
    Song.create( title: title, album: album, artist: artist )
end