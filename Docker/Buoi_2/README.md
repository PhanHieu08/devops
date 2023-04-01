# Sự khác biệt giữa mạng bridge mặc định và bridge do người dùng định nghĩa

### Mạng bridge do người dùng định nghĩa có thể phân giải DNS giữa các container một cách tự động
> Với mạng bridge mặc định, các container chỉ có thể kết nối với nhau sử dụng địa chỉ IP. Nếu muốn kết nối sử dụng tên hoặc alias thì cần phải sử dụng option [--link](https://docs.docker.com/network/links/) ( không khuyến khích sử dụng do option này có thể bị Docker gỡ bỏ bất kì lúc nào ). 
>
> Mặt khác mạng bridge người dùng định nghĩa thì các container có thể kết nối với nhau sử dụng tên hoặc alias mà không cần thêm gì.

### Mạng bridge do người dùng định nghĩa đóng gói (isolation) tốt hơn
> Các container không được chỉ định option --network sẽ được thêm vào mạng mặc định. Điều này sẽ rất rủi ro do các dịch vụ / container không liên quan tới nhau có thể kết nối với nhau.
>
> Mạng do người dùng định nghĩa cung cấp cho container một phạm vi mạng nhất định. Chỉ các container trong cùng mạng mơi có thể kết nối với nhau.

### Container có thể được thêm và loại bỏ khỏi mạng tự định nghĩa một cách nhanh chóng
> Có thể kết nối hoặc hủy kết nối của container tới mạng tự định nghĩa một cách nhanh chóng.
>
> Với mạng mặc định thì cần phải dừng container, sau đó chạy lại với một option network khác.

### Mạng mặc định không linh hoạt
> Khi cấu hình mạng mặc định, các container trong mạng mặc định đều sử dụng chung cấu hình đó và sau khi cấu hình thì cần phải khởi động lại Docker.
>
> Với mạng người dùng tự định nghĩa, ta có thể tạo ra nhiều mạng khác nhau, với các cấu hình khác nhau để phù hợp với từng nhóm container khác nhau.

### Biến môi trường
> Các container có thể chia sẻ các biến môi trường sử dụng cờ --link. Với mạng tự định nghĩa, các container không thể chia sẻ biến môi trường vơi nhau.
