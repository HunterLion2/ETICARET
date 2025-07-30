# **Settings Modülünü BaseController’a Eklemek ve Tüm Rotalara Yayınlamak**

Bu eğitim dokümanında, **SettingsModel'in tüm rotalara nasıl entegre edileceğini** ve **BaseController üzerinden yayınlanmasını** öğreneceksiniz. **Daha önce BaseController.php içinde bu kodlar eklenmişti, ancak çeşitli işlemlerde yorum satırına alınmış olabilir. Bu yüzden kontrol edilmesi önemlidir.**

---

## **1. BaseController.php İçinde SettingsModel Kullanımı**

Aşağıdaki kod, **SettingsModel kullanarak uygulama ayarlarını yüklemektedir:**

```php
use App\Models\SettingsModel;

// SettingsModel kullanarak ayarları yükle
$settingsModel = new SettingsModel();
$this->settings = $settingsModel->getAllSettings();
```

### **Ne İşe Yarar?**
✅ `use App\Models\SettingsModel;` → **SettingsModel sınıfını dahil eder.**
✅ `new SettingsModel();` → **Veritabanından ayarları yükler.**
✅ `$this->settings = $settingsModel->getAllSettings();` → **Uygulama genelinde ayarlara erişimi sağlar.**

🔹 **Önemli Not:**
**BaseController dosyanızda bu kod zaten mevcut, ancak çeşitli işlemler sırasında yorum satırına alınmış olabilir. Kodun aktif olup olmadığını kontrol ediniz!**

---

## **2. Render ve RenderAdmin Metotlarında Ayarların Gönderilmesi**

**BaseController.php** dosyanızın `render()` ve `renderAdmin()` metotları içinde aşağıdaki kodun bulunduğunu kontrol ediniz:

```php
$data['settings'] = $this->settings;
```

### **Ne İşe Yarar?**
✅ **Tüm görünümlere (views) uygulama ayarlarının otomatik olarak iletilmesini sağlar.**
✅ **Admin ve kullanıcı arayüzleri için gerekli yapılandırmaları içerir.**

🔹 **Önemli Not:**
Bu kod da halihazırda **BaseController.php** içinde yer almakta, ancak daha önce bazı işlemler için **yorum satırına alınmış olabilir**. Kontrol edilerek tekrar aktif hale getirilmelidir.

---

## **Sonuç**

Bu eğitimde **SettingsModel’in BaseController’a nasıl entegre edildiğini ve tüm rotalara nasıl yayın yapıldığını** öğrendiniz. Şimdi, **BaseController.php dosyanızda bu kodların aktif olduğundan emin olun ve yorum satırına alınmışsa tekrar etkinleştirin!** 🚀