# Zenity ile '-df' Komutu Görsel Arayüzü
Linux Araçları ve Kabuk Programlama dersi kapsamında yapılan bir projedir. VMware-Ubuntu sanal makinesi kullanıldı. Linux Bash Script dili ve görsel arayüz olarak Zenity Kütüphanesi kullanılarak oluşturulmuştur.

## Kullanılan Teknolojiler
  * Vim Text Editörü
  * Bash Script 
  * Zenity
  
## Kurulum ve Çalıştırma
  * Öncelikle Linux tabanlı bir işletim sistemine sahip olmanız gerekiyor. Makinenize ekstra bir işletim sistemi kurmak istemiyorsanız yardımcı sanal makinelerden (VMware - VirtualBox vb.) faydalanabilirsiniz.
  * Zenity kütüphanesinin kurulumu için bu adımları takip edebilirsiniz;
    ```
    sudo apt-get update -y
    ```
    ```
    sudo apt-get install -y zenity
    ```
  * Projeyi localinizde çalıştırmak için bu komutları girmeniz yeterli olacaktır.
    ```
    git clone https://github.com/Emine-Erdem/LinuxDiskProject-Zenity.git
    ```
    ```
    cd LinuxDiskProject-Zenity
    ```
    ```
    bash LinuxDiskProject-Zenity
    ```
## Projenin Amacı ve Kullanımı
Projenin amacı "-df" komutunun çıktısını alarak diskin (/) ne kadarının dolu olduğunun bilgisi alınacak. Ayrıca ek bir seçenek olarak tüm diskleri listeleme seçeneği ile diskleri ve boyutlarını görüntüleyebilir, istersek bir diski de seçip silebiliriz.
### Ana Menu

![menu](https://user-images.githubusercontent.com/56304631/210816743-84b67dfd-dc6c-4c7e-8f1f-bad4d521c781.png)

* Ana menude bizi üç seçenek karşılıyor. İstediğimiz seçeneğe çift tıklayarak veya tek bir tıklamadan sonra 'OK' seçeneğine basarak da erişebiliriz.

### Disk Doluluk Oranı

![disk2](https://user-images.githubusercontent.com/56304631/210821349-61857fe1-1d01-47b5-bdaa-52d8f8cf035c.png)



