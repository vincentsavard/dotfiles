autocutsel -fork &
autocutsel -selection PRIMARY -fork &

# run systemd as user instance
exec /usr/lib/systemd/systemd --user &

feh --bg-scale ~/images/wallpapers/starwars.jpg

exec awesome
