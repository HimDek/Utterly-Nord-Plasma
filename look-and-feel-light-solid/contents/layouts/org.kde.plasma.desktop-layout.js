var panel = new Panel
var panelScreen = panel.screen

panel.location = "top"
panel.hiding = "alwaysvisible"
panel.height = 2 * Math.floor(gridUnit * 13 / 18)
panel.lengthMode = "fill"
panel.alignment = "center"
//panel.opacity = "adaptive"
panel.floating = true
panel.offset = 0

var launcher = panel.addWidget("org.kde.plasma.simplekickoff")
launcher.currentConfigGroup = new Array("Shortcuts");
launcher.writeConfig("global","Alt+F1");

panel.addWidget("org.kde.plasma.marginsseparator")
panel.addWidget("org.kde.windowbuttons")
panel.addWidget("org.kde.plasma.marginsseparator")
panel.addWidget("org.kde.windowtitle")
panel.addWidget("org.kde.plasma.marginsseparator")
panel.addWidget("org.kde.plasma.appmenu")
panel.addWidget("org.kde.plasma.panelspacer")
panel.addWidget("org.kde.plasma.marginsseparator")
panel.addWidget("org.kde.plasma.digitalclock")
panel.addWidget("org.kde.plasma.marginsseparator")
panel.addWidget("org.kde.plasma.panelspacer")
panel.addWidget("org.kde.netspeedWidget")
panel.addWidget("org.kde.plasma.systemtray")

var dock = new Panel

dock.location = "bottom"
dock.hiding = "dodgewindows"
dock.height = 2 * Math.floor(gridUnit * 3 / 2)
dock.lengthMode = "fit"
dock.alignment = "center"
//dock.opacity = "adaptive"
dock.floating = true
dock.offset = 0

dock.addWidget("com.himdek.kde.plasma.overview")
dock.addWidget("org.kde.plasma.icontasks")

var downloads = dock.addWidget("org.kde.plasma.folder")
downloads.currentConfigGroup = ["General"]
downloads.writeConfig("labelMode","3")
downloads.writeConfig("labelText","Downloads")
downloads.writeConfig("url",`${userDataPath("downloads")}`)

dock.addWidget("org.kde.plasma.trash")

var desktopsArray = desktopsForActivity(currentActivity());
for( var j = 0; j < desktopsArray.length; j++) {
    desktopsArray[j].wallpaperPlugin = 'org.kde.image';
    var analogclock = desktopsArray[j].addWidget("org.kde.plasma.analogclock", gridUnit * 33, gridUnit * 2, gridUnit * 10, gridUnit * 10);
}