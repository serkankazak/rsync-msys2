# rsync-msys2

## How to use rsync on Windows?

download exe from https://github.com/msys2/msys2-installer/releases (under Assets, something like 'msys2-x86_64-20250221.exe
')

install it & run msys2

copy followings & paste (right click then paste) and press enter
```
pacman --noconfirm -S git
git clone https://github.com/serkankazak/rsync-msys2.git
cd rsync-msys2
bash go.sh
```

close & reopen msys2


type `rsync -h` & press enter for help
