pacman --noconfirm -S unzip

wget https://github.com/facebook/zstd/releases/download/v1.4.4/zstd-v1.4.4-win64.zip
unzip zstd-v1.4.4-win64.zip
rm -r dll example include static
rm zstd-v1.4.4-win64.zip README.md
echo "alias zstd='/home/$USER/zstd.exe'" >> ~/.bashrc
source ~/.bashrc

wget https://repo.msys2.org/msys/x86_64/rsync-3.4.1-1-x86_64.pkg.tar.zst
zstd -d rsync-3.4.1-1-x86_64.pkg.tar.zst
tar -xvf rsync-3.4.1-1-x86_64.pkg.tar
mv usr/bin/rsync.exe .
echo "alias rsync='/home/$USER/rsync.exe'" >> ~/.bashrc
source ~/.bashrc
rm -r usr
rm rsync-3.4.1-1-x86_64.pkg*

wget https://repo.msys2.org/msys/x86_64/libzstd-1.5.7-1-x86_64.pkg.tar.zst
zstd -d libzstd-1.5.7-1-x86_64.pkg.tar.zst
tar -xvf libzstd-1.5.7-1-x86_64.pkg.tar
mv usr/bin/msys-zstd-1.dll .
rm -r usr
rm libzstd-1.5.7-1-x86_64.pkg*

wget https://repo.msys2.org/msys/x86_64/libxxhash-0.8.3-1-x86_64.pkg.tar.zst
zstd -d libxxhash-0.8.3-1-x86_64.pkg.tar.zst
tar -xvf libxxhash-0.8.3-1-x86_64.pkg.tar
mv usr/bin/msys-xxhash-0.dll .
rm -r usr
rm libxxhash-0.8.3-1-x86_64.pkg*

rsync -h
