# Tuong tac remote va local repo
>
Tao remote-repo tren Github
>
Tao local repo
> mkdir ~/local-repo
>
> cd local-repo
>
> git init
>
Tao lien ket
> git remote add origin git@github.com:PhanHieu08/remmote-repo.git
>
Kiem tra lien ket
> git remote -v
>
Tao file moi 
> touch README.md
> echo "Learn Git Remote" > README.md
>
Kiem tra trang thai file trong git
> git status
>
Them README.md vao stage
> git add README.md
>
Tao commit
> git commit -m "Create new file: README.md"
>
Dua commit vua tao len git
> git push origin
