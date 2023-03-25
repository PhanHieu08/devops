# Khoi phuc commit
>
Tao cac commit A, B, C, D
> echo "file a" > file_a
>
> git add file_a
>
> git commit -m "A"
>
> echo "file b" > file_b
>
> git add file_b
>
> git commit -m "B"
>
> echo "file c" > file_c
>
> git add file_c
>
> git commit -m "C"
>
> echo "file d" > file_d
>
> git add file_d
>
> git commit -m "D"
>
> Day cac commit len remote
> git push origin staging
>
Xem lich su commit va copy id cua commit B
> git log
>
Reset ve commit B va xoa cac commit C, D
> git reset --hard 
> 
Kiem tra lich su commit khong co C va D, trong tap tin ko co file c va d
> ls -al
>
Dua thay doi len remote
> git push -f origin staging
>
Tao lai 2 commit C va D
> echo "file c" > file_c
>
> git add file_C
>
> git commit -m "C"
>
> echo "file d" > file_D
>
> git add file_d
>
> git commit -m "D"
>
> git push origin staging
>
Revert ve commit C
> git revert <commit_d_id>
>
Xem lich su commit, ta thay co mot commit la Revert "D", kiem tra file trong thu muc co file a, b, c, tuy nhien commit D van duoc giu nguyen
> git log
>
> ls -al






















