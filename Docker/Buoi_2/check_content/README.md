# Sự khác biệt giứa CMD và ENTRYPOINT
>
> CMD: Dùng để đặt các lệnh mặc định sẽ được thực thi khi gọi câu lệnh docker run. Tuy nhiên nếu ta truyền thêm một đối số hoặc một câu lệnh khác nào đó sau câu lệnh docker run thì câu lệnh trong CMD sẽ không được thực thi
>
> ENTRYPOINT: Giống với CMD cho phép ta đặt các lệnh mặc định. Tuy nhiên nếu ta chạy câu lệnh docker run thì câu lệnh sử dụng ENTRYPOINT vẫn sẽ được thực thi
