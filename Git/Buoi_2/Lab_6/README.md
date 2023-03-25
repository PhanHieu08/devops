# Xu ly conflict
>
Luu cac commit tu repo ve local
> git checkout staging
>
> git lull origin staging
>
Tao nhanh dev tu staging
> git branch dev
>
> Tao cac file hello.txt va lab_6.txt
> git checkout staging
> 
> touch hello.txt
>
> touch lab_6.txt
>
Su dung vim gi vao hello.txt
> vim hello.txt
>
Noi dung: 
> print("Hello python")
>
console.log("Hello Javascript")
>
> echo "Hello bash"
>
Tao commit
> git add .
>
> git commit -am "hello in python, js, bash"
>
Tao cac file tai nhanh dev
> git checkout dev
>
> touch hello.txt
>
> touch lab_7.txt
>
> Su dung vim ghi vao file hello.txt voi noi dung sau va tao commit cho cac thay doi
> print("Hello python")
>
> System.out.println("Hello Java")
>
> fmt.Println("Hello Golang")
>
> git add .
>
> git commit -am "hello in python, java, golang"
>
Merge nhanh dev va staging, tuy nhien xay ra xung dot do trong file hello.txt cua ca 2 nhanh co noi dung khac nhau
> git merge staging
>
Mo file hello.txt bang vim, noi dung file bao gom noi dung cua 2 file hello.txt truoc do
>
De xu ly xung dot can chon va xoa nhung dong da chon, sau do tao commit moi
> git add .
>
> git commit -am "merge code from staging and resolve conflict"
>





