#setup.sh
#!/bin/bash
#-----------------------------
#  [Setting up the Locale]
#
#
HOSTNAME="archlinux"
USER="samuel"
LANG="en_US.UTF-8"
CHAR="UTF-8"
LOCALE="${LANG} ${CHAR}"
ISO="en_US ISO-8859-1"


#------------------------------
#  [Setting up the Locale]
#
#
echo "#" >> /etc/locale.gen
echo "#" >> /etc/locale.gen
echo "# ***** [Yenux Boot] *****" >> /etc/locale.gen
echo "#" >> /etc/locale.gen
echo "${LOCALE}" >> /etc/locale.gen
echo "${ISO}" >> /etc/locale.gen
echo "#" >> /etc/locale.gen
locale-gen
echo LANG=${LANG} > /etc/locale.conf
export LANG=${LANG}
echo $HOSTNAME > /etc/hostname

ln -s /usr/share/zoneinfo/Africa/Abidjan /etc/localtime
hwclock --systohc --utc

passwrd #<-- set password
useradd -m -G wheel -c "Samuel BOUYE" -s /bin/bash ${USER}
passwd ${USER} #<--- set user password
chage -d 0 ${USER} #<--- for change password in the next login
EDITOR=nano visudo

# enable network-manager
systemctl enable NetworkManager
