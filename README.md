# rsync-msys2

## How to use rsync on Windows?

download exe from https://github.com/msys2/msys2-installer/releases (click Assets and download something like 'msys2-x86_64-20250221.exe
')

install it and run msys2

copy followings and paste (right click then paste) and press enter and wait
```
pacman --noconfirm -S git
git clone https://github.com/serkankazak/rsync-msys2.git
cd rsync-msys2
bash go.sh
```

close and reopen msys2

type `rsync -h` and press enter for help

### Optional: install ssh and sshpass to use with rsync

```
pacman --noconfirm -S openssh
t=$(wget -qO - https://repo.msys2.org/msys/x86_64 | grep -oE 'sshpass-[^"]+-x86_64.pkg.tar.zst' | sort -u | tail -n 1)
wget "https://repo.msys2.org/msys/x86_64/$t"
pacman --noconfirm -U "./$t"
rm "$t"
```
