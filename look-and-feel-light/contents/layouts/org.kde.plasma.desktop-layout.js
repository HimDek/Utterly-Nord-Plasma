var panel = new Panel
var panelScreen = panel.screen

panel.location = "top"
panel.height = 2 * Math.floor(gridUnit * 13 / 18)
panel.width = screenGeometry(panelScreen).width

panel.addWidget("org.kde.plasma.simplekickoff")
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
dock.height = 2 * Math.floor(gridUnit * 3 / 2)
dock.hiding = "autohide"
dock.minimumLength = 2 * Math.floor(gridUnit * 4)
dock.alignment = "center"
dock.offset = 0

dock.addWidget("org.kde.plasma.betterkickerdash")
dock.addWidget("org.kde.plasma.icontasks")

var downloads = dock.addWidget("org.kde.plasma.folder")
downloads.currentConfigGroup = ["General"]
downloads.writeConfig("labelMode","3")
downloads.writeConfig("labelText","Downloads")
downloads.writeConfig("url","file:///home/hide/Downloads")

dock.addWidget("org.kde.plasma.trash")

var desktopsArray = desktopsForActivity(currentActivity());
for( var j = 0; j < desktopsArray.length; j++) {
    desktopsArray[j].wallpaperPlugin = 'org.kde.image';
    var analogclock = desktopsArray[j].addWidget("org.kde.plasma.analogclock", gridUnit * 33, gridUnit * 2, gridUnit * 10, gridUnit * 10);
}