#!/bin/bash

function progress () {
    (
     
    echo "# İşlem devam ediyor => %0." ; sleep 0.1

    echo "25"
    echo "# İşlem devam ediyor => %25." ; sleep 0.2

    echo "50"
    echo "# İşlem devam ediyor => %50." ; sleep 0.2
    
    echo "75"
    echo "# İşlem devam ediyor => %75." ; sleep 0.5

    echo "# Yönlendirme bitti!!!" ; sleep 0.5
    echo "100"

    ) |
    zenity --progress \
      --title="Yonlendiriliyorsunuz" \
      --text="Bitmek uzere..." \
      --percentage=0 \
      --auto-close \
      --auto-kill

    (( $? != 0 )) && zenity --error --text="HATALI İŞLEM." && menu

    menu
}

# disk doluluk orani
function diskSpace () {

# df komutunu çalıştırın ve çıktısını disk_usage değişkenine atayın
disk_usage=$(df / | awk '{print $5}' | tail -n 1 | sed 's/%//')

echo "Disk usage: $disk_usage"

zenity --progress --text="Disk usage: $disk_usage%" --percentage=$disk_usage

    if [ "$?" != "0" ]
    then
        progress
    else
        zenity  --warning \
                --title="Disk usage" \
                --text="Disk bulunmamaktadır!" \
                --width 200 \
                --height 100 
        menu

    fi
}

# diskleri listeleme ve silme 
function listDel () {

# Diskleri göster
disks=$(df -h | awk '{print $1 " (" $2 ")"}' | zenity --list --title "Diskler" --column "Diskler")

# Seçilen disk için disk bilgilerini al
disk_info=$(df -h | grep "$disks" | awk '{print "Disk: " $1 "\nBoyut: " $2 "\nKullanılabilir: " $4 "\nKullanım: " $5}')

# Seçilen diski göster
zenity --info \
       --title "Disk Bilgileri" \
       --text $(echo "$disk_info")

# Diski temizlemeyi onaylamak için kullanıcıya bir kutu aç
zenity --question \
       --title "Disk Temizle" \
       --text "Seçilen diski temizlemek istediğinizden emin misiniz?\n$disk_info"

# Kullanıcı "Evet" seçeneğini seçtiğinde diski temizle
if [ $? -eq 0 ]
then
  sudo rm -rf "$(df | grep "$disks" | awk '{print $6}')/*"
  zenity --info \
         --title "Disk Temizle" \
         --text "Disk Temizlendi" 
         
fi
    
}

function quit () {
    karar=$(zenity  --question \
                    --title="CIKIS"\
                    --text="Ana menuye dönmek istiyor musunuz?"\
                    --width 200 \
                    --height 100 )

    if [ "$?" != "1" ]
    then
       menu 
    else
        echo "  "
        echo "  "
        echo "____________________________________________"
        echo "|                                          |"
        echo "|                İŞLEMLERİNİZ              |"
        echo "|         BAŞARIYLA TAMAMLANMIŞTIR.        |"
        echo "|__________________________________________|"
        echo "  "
        echo "  "
        exit 0
    fi
}

function menu () {
    while true 
    do
        choice="$(zenity --width=400 --height=250 --list --column "" --title="DISK SPACE & DISK DELETE" --text="Gerçekleştirmek istediğiniz işlemi seçiniz." \
            "Diskin Doluluk Oranını Göster" \
            "Diskleri Listele ve Sil" \
            "İptal" 
        )"

        # handle cancel button
        if [ "$?" != "0" ]
        then
            exit 1
        fi

        case $choice in
          "Diskin Doluluk Oranını Göster")
           diskSpace
            ;;
           "Diskleri Listele ve Sil")
           listDel
            ;;
           "İptal")
            quit
            ;;
           *)
            echo "Hatalı Seçim"
            ;;
        esac

    done
}

# Program is launched here.
menu
