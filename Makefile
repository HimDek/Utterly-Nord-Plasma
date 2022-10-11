look-and-feel: look-and-feel/*
	tar -cJf Utterly-Nord.tar.xz look-and-feel/* --transform="s/look-and-feel\///"

look-and-feel-light: look-and-feel-light/*
	tar -cJf Utterly-Nord-Light.tar.xz look-and-feel-light/* --transform="s/look-and-feel-light\///"

colors: UtterlyNord.colors
	tar -czf Utterly-Nord-Colors.tar.gz UtterlyNord.colors

colors-light: UtterlyNordLight.colors
	tar -czf Utterly-Nord-Light-Colors.tar.gz UtterlyNordLight.colors

wallpaper: wallpaper/*
	tar -cJf Utterly-Nord-Wallpaper.tar.xz wallpaper/* --transform="s/wallpaper/Utterly-Nord/"

kvantum: kvantum/*
	tar -caf Utterly-Nord-kvantum.zip kvantum/* --transform="s/kvantum/Utterly-Nord/"

kvantum-light: kvantum-light/*
	tar -caf Utterly-Nord-Light-kvantum.zip kvantum-light/* --transform="s/kvantum-light/Utterly-Nord-Light/"

sddm: sddm/*
	tar -cJf Utterly-Nord-SDDM.tar.xz sddm/* --transform="s/sddm/Utterly-Nord/"

clean:
	rm *.zip & rm *.tar.*