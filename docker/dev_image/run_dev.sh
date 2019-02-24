docker run -d --name mytunes -v "$HOME"/mytunes:/mytunes -p 27017:27017 -p 8080:80 -p 8443:443 devimage
