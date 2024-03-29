look-and-feel: look-and-feel/*
	tar -cJf Utterly-Nord.tar.xz look-and-feel/* --transform="s/look-and-feel\///"

look-and-feel-light: look-and-feel-light/*
	tar -cJf Utterly-Nord-Light.tar.xz look-and-feel-light/* --transform="s/look-and-feel-light\///"

look-and-feel-solid: look-and-feel-solid/*
	tar -cJf Utterly-Nord-Solid.tar.xz look-and-feel-solid/* --transform="s/look-and-feel-solid\///"

look-and-feel-light-solid: look-and-feel-light-solid/*
	tar -cJf Utterly-Nord-Light-Solid.tar.xz look-and-feel-light-solid/* --transform="s/look-and-feel-light-solid\///"


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

kvantum-solid: kvantum-solid/*
	tar -caf Utterly-Nord-Solid-kvantum.zip kvantum-solid/* --transform="s/kvantum-solid/Utterly-Nord-Solid/"

kvantum-light-solid: kvantum-light-solid/*
	tar -caf Utterly-Nord-Light-Solid-kvantum.zip kvantum-light-solid/* --transform="s/kvantum-light-solid/Utterly-Nord-Light-Solid/"


sddm: sddm/*
	tar -cJf Utterly-Nord-SDDM.tar.xz sddm/* --transform="s/sddm/Utterly-Nord/"


clean:
	rm *.zip & rm *.tar.*