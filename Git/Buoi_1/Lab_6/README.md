# Lien ket Local va Remote repo
>
Tao repo moi tren Github la remote-repo
>
Tao local-repo
> mkdir ~/local-repo
> cd local-repo
> git init
>
Tao lien ket giua remote va local repo
> git remote add origin git@github.com:PhanHieu08/remote-repo.git
>
Kiem tra lien ket
> git remote -v
>
Tao file moi 
echo "Learn Git Remote" > README.md
>
Kiem tra trang thai file trong git
> git status
>
Them README.md vao stage
> git add README.md
>
Tao commit
> git commit -m "Create new file: README.md"
