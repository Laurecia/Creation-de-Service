#!/bin/bash

exec > /tmp/insert_log 2>&1

# creer les variables

chemin_periph=/dev/sdb1

music= mplayer /Music/fally.mp3

nb = 1


if [[ $point_montage || -e $chemin_periph ]]
then
        echo "$(date): cle inseree!"

        # creer le chemin du peripherique

        sudo mkdir/media/usb_drive

        # mount(monter) le peripheriques

        point_montage=$(mount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        # play a song

        echo "$music"

        # ecrire dans le fichier

        sudo touch/media/usb_drive/armand.txt

        #demonter le peripherique

        point_demontage=$(umount| awk -v chemin_periph="$chemin_periph" 'sdb1==chemin_periph{printf$3'})

        echo "$music"
fi

[[ $point_montage ]] || {echo"cle demontee" ; exit1}


echo "cle monte sur $point_montage"



~                 
