name=%Y-%m-%d-%T-screenshot.png

scrot ~/Pictures/$name
dunstify "Screenshot saved!" "Screenshot saved in Pictures" -a scrot
