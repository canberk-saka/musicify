🎶 Musicify
Musicify, Spotify API kullanarak kullanıcıların dinledikleri albümleri, yeni çıkan müzikleri ve Spotify Wrap'lerini aylık, 6 aylık veya yıllık zaman dilimlerine göre görüntüleyebilecekleri bir uygulamadır. Firebase altyapısını kullanarak kimlik doğrulama (Auth) işlemleri sağlar.
🚀 Özellikler
• 🟢 Spotify API Entegrasyonu: Kullanıcının dinleme geçmişini, yeni çıkanları ve Spotify Wrap'lerini görüntüleme.
• 🔐 Firebase Auth: Kullanıcı girişi ve kimlik doğrulama işlemleri.
• 🌐 Çoklu Dil Desteği: flutter_localizations kullanarak farklı diller için destek.
• 📍 Esnek Navigasyon: go_router ile dinamik ve esnek sayfa geçişleri.
• 🎛️ State Management: Cubit kullanarak sağlam ve anlaşılır bir yapı.
• 💫 Akıcı Arayüz: shimmer efekti ile yükleme ekranlarında daha kullanıcı dostu deneyim.   
🛠️ Kullanılan Teknolojiler ve Kütüphaneler
firebase_auth Kullanıcı kimlik doğrulama işlemleri
go_router Sayfa geçişleri için
json_serializable JSON serileştirme için
dio HTTP istekleri için
flutter_localizations Çoklu dil desteği için
url_launcher Harici bağlantı açma işlemleri
shimmer Yükleme ekranlarında animasyon
font_awesome_flutter İkon desteği için
🔍 API Kullanımı
Spotify API'ye erişmek için aşağıdaki yetkilendirme akışı kullanılır:
• client_id ve client_secret ile token alma.
• Token kullanarak albümler, şarkılar ve dinleme geçmişi çekme.
🌐 Navigasyon Akışı
Uygulama, go_router kullanarak aşağıdaki sayfa akışına sahiptir:
• Giriş Sayfası: Kullanıcı giriş yapar.
• Ana Sayfa: Kullanıcı dinleme geçmişini görüntüler.
• Wrap: Kullanıcı seçtiği zaman aralığına göre yıllık Wrap'leri görüntüler.
________________________________________
🎵 Musicify ile müziği keşfetmenin keyfini çıkarın! 🌟
👨‍💻 Geliştirici: Canberk Saka
