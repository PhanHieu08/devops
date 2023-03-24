# Lam viec voi branch tren local
>
Xem tat ca cac branch
> git branch
>
Tao nhanh moi co ten feature
> git branch feature
>
Doi sang nhanh feature
> git checkout feature
>
Tro ve nhanh main va tao mot nhanh moi alpha va chuyen sang nhanh do
> git checkout main
> git checkout -b alpha
>
Xoa nhanh
> git branch -d feature
>
Tao commit tren alpha
> git checkout alpha
>
> echo "New content" > newfile.txt
>
> git add newfile.txt

> git commit -m "add newfile.txt"
>
So sanh cac thay doi tren nhanh alpha va main
>
Day cac commit tren nhanh alpha toi remote
> git checkout alpha
> git push origin alpha
