autocutsel -fork &
autocutsel -selection PRIMARY -fork &

# run systemd as user instance
systemd --user &

feh --bg-scale ~/images/wallpapers/starwars.jpg

exec awesome
