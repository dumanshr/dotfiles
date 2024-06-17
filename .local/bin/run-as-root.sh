pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
pacman -U --noconfirm 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
echo '[chaotic-aur]'>>/etc/pacman.conf
echo 'Include = /etc/pacman.d/chaotic-mirrorlist' >> /etc/pacman.conf

pacman -Syyu
pacman -S --needed --noconfirm --overwrite \* sublime-text-4

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=16NGDYZo44nQTO7ZNm0eAI_NL8CkEB6_o' -O /tmp/win11-fonts.tar.zst
pacman -U --noconfirm '/tmp/win11-fonts.tar.zst'

fc-cache --force
