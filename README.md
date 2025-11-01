# 🧪 Watir UI Tests

Tự động kiểm thử giao diện bằng **Watir + RSpec** cho trang [The Internet](https://the-internet.herokuapp.com/).

---

## 🚀 Cách chạy

```bash
bundle install
rspec --format documentation
```

- Mỗi trang test được định nghĩa trong thư mục `spec/pages/`.  
- Mỗi file test tương ứng nằm trong `spec/`.  
- File cấu hình chung: `spec/spec_helper.rb`.

---

## 📁 Kết quả

| Loại | Thư mục | Ghi chú |
|------|----------|---------|
| XML report | `reports/xml/` | Báo cáo RSpec dạng JUnit |
| Screenshot | `reports/screenshot/` | Ảnh khi test lỗi |

---

## ➕ Thêm test mới
1. Tạo file page: `spec/pages/<page_name>_page.rb`  
2. Tạo file test: `spec/specs/<page_name>_spec.rb`  
3. Viết test theo cú pháp RSpec.

---

## 💡 Lưu ý
- Mỗi test mở trình duyệt mới để tránh lỗi trạng thái.  
- Có thể tắt chế độ headless nếu muốn xem browser thật.  
- Nếu lỗi, kiểm tra ảnh trong `reports/screenshot/`.  
