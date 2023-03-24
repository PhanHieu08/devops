# Lam viec voi Tag
>
main
> cd ~/test-repo
> git checkout main
>
Tao nhanh staging
> git checkout -b staging
>
Tao file moi
> echo "Changelogs: " > changelogs
>
> echo "- New version: v1.0.0" >> changelogs
>
Tao commit moi
> git add changelogs
> 
> git commit -m "add changelogs file"
>
Tao tag v1.0.0
> git tag v1.0.0
>
Xem cac tag
> git tag
>
Xem tag v1.0.0
> git show v1.0.0
>
Lam viec tren tag v1.0.0
> git checkout v1.0.0
>
Kiem tra danh sach commit tren tag
> git log --oneline
>
Tro ve nhanh staging
> git checkout staging
>
Day tag v1.0.0 len remote
> git push origin v1.0.0
>
Chuyen sang staging
> git checkout staging
>
Update va tao commit changelogs
> echo "- update to v1.1.0" >> changelogs
>
> git add changelogs
>
> git git commit -m "update changelogs
>
Tao tag v1.1.0
> git tag v1.1.0
>
Kiem tra danh sach tag
> git tag
>
Day tag v1.1.0 len remote
> git push origin v1.1.0
>
Xoa tag v1.1.0 va dua len remote
> git push --delete origin v1.1.0

