look-and-feel: look-and-feel/*
	tar -cJf Utterly-Nord.tar.xz look-and-feel/* --transform="s/look-and-feel\///"

colors: UtterlyNord.colors
	tar -czf Utterly-Nord-Colors.tar.gz UtterlyNord.colors

wallpaper: wallpaper/*
	tar -cJf Utterly-Nord-Wallpaper.tar.xz wallpaper/* --transform="s/wallpaper/Utterly-Nord/"

clean:
	rm *.tar.*