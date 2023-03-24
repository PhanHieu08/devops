Tao repo moi tren Github co ten la test-repo
>
Clone repo vua tao ve local
> git clone git@github.com:PhanHieu08/test-repo.git

Kiem tra repo vua clone ve
> cd ~/test-repo
> ls -al

Them file moi
> echo "print('Hello Git')" > hello.py

Kiem tra trang thai file trong Git'
> git status

Them hello.py vao vung stage
> git add hello.py

Tao commit
> git commit -m "Create new file: hello.py"
