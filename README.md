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
* Ana menude bizi üç seçenek karşılıyor. İstediğimiz seçeneğe çift tıklayarak veya tek bir tıklamadan sonra 'OK' seçeneğine basarak da erişebiliriz.

![menu](https://user-images.githubusercontent.com/56304631/210816743-84b67dfd-dc6c-4c7e-8f1f-bad4d521c781.png)

### Disk Doluluk Oranı
* 'Disk Doluluk Oranı' Seçeneğini seçerek diskin doluluk oranını ve yüzdeliğini progress barda görüntüleyebiliriz. 

![disk2](https://user-images.githubusercontent.com/56304631/210821349-61857fe1-1d01-47b5-bdaa-52d8f8cf035c.png)

### Diskleri Listele ve Sil
* 'Diskleri Listele ve Sil' Seçeneği seçildiğinde önce tüm diskler alfabetik olarak 2 şekilde listelenir.

![del2](https://user-images.githubusercontent.com/56304631/210828181-bd62392f-a56a-4570-9786-0fbdb538bce4.png)

* Silmek istediğimiz diski seçtikten sonra gelen uyarı penceresine onay verdiğimiz zaman disk silinmiş olur.

![del3](https://user-images.githubusercontent.com/56304631/210831356-0f8ada80-77cf-4c0b-a720-7f6da20f69cd.png)

* Eğer herhangi bir diski silmeden önce genel bir bilgi almak istiyorsak disk listesinden seçim yapmadan 'OK' seçeneğine basarak genel bir bilgilendirme ekranına erişmiş oluruz.

![info](https://user-images.githubusercontent.com/56304631/210832727-89c23ad8-7596-4cab-b8ae-f38d3222a327.png)

### Çıkış
* Ana menuden 'İptal' seçeneğine tıkladığımızda bizi bir karar ekranı karşılıyor. Bu ekranda eğer çıkış yapmaktan vazgeçtiysek tekrar ana menuye yönlendiriliyoruz, çıkış yaptığımızda ise arayüz kapanır ve terminal ekranında işlemlerin bittiğine dair bir bilgilendirme yazısı verilir.

![exit2](https://user-images.githubusercontent.com/56304631/210842364-90c1c58c-1194-4d3f-b516-c6e0829b2b96.png)

### Hata
* Hiç bir seçim yapmadığımız halde ilerlemeye çalışınca terminale 'Hatalı Seçim' uyarısı verilir.

![hatali](https://user-images.githubusercontent.com/56304631/210843234-c17e55c4-1db5-4692-b32d-2b65ebc9a355.png)



