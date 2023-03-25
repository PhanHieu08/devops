# Merge va Pull Request
>
Chuyen sang nhanh staging
> git checkout staging
>
Tao nhanh production
> git branch production
>
Xem cac nhanh
> git branch
>
Tao commit tren staging
> echo "implement new feature: manage cart" > feature.txt
>
> git add feature.txt
>
> git commit -am "new feature: manage cart"
>
Chuyen sang nhanh production
> git checkout production
>
Kiem tra va xac nhan khong co feature.txt
> ls - al
>
Thuc hien merge tu staging ve production
> git merge staging
>
Kiem tra lai tap tin
> ls -al
>
Day cac commit tu staging va production len remote
> git push origin
>
> git checkout staging
>
> git push origin
