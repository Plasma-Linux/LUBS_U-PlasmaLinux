#!/usr/bin/env bash
#
# Jotch-96
# Twitter: @PlasmaLinux
# Email  : plasmalinuxjapan@gmail.com
#
# (c) 2022 PlasmaLinuxJapan.
#

set -e -u


# Default value
# Default value
# All values can be changed by arguments.
username="plasma"


# Parse arguments
while getopts 'u:' arg; do
    case "${arg}" in
        u) username="${OPTARG}" ;;
    esac
done

# Lightdmで自動ログインがされるように設定
sed -i "s/%USERNAME%/${username}" "/etc/lightdm.conf"
