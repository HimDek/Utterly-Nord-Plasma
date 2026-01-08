#!/bin/bash
sudo su -c "

declare -A dirs
dirs["$HOME/.local/share/color-schemes"]="/usr/share/color-schemes"
dirs["$HOME/.icons"]="/usr/share/icons"
dirs["$HOME/.local/share/icons"]="/usr/share/icons"
dirs["$HOME/.local/share/plasma/desktoptheme"]="/usr/share/plasma/desktoptheme"

for dir in \${!dirs[@]}; do
    for i in \$dir/*; do
        if [[ -e \$i ]]; then
            basename=\$(basename \$i)
            if [[ -e \${dirs[\${dir}]}/\$basename ]]; then
                echo \"Symlink \${dirs[\${dir}]}/\$basename -> \$i already exists.\"
            else
                echo \"Symlink \${dirs[\${dir}]}/\$basename -> \$i created.\"
                ln -s \$i \${dirs[\${dir}]}/\$basename
            fi
        fi
    done
done
"