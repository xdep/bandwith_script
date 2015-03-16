#!/bin/bash
#
#


echo ""
echo "+---------+"
echo "|Sysinfo.."
echo "+---------+"
echo ""

cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
tram=$( free -m | awk 'NR==2 {print $2}' )
swap=$( free -m | awk 'NR==4 {print $2}' )
up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

echo ""
echo "CPU model : $cname"
echo "Number of cores : $cores"
echo "CPU frequency : $freq MHz"
echo "Total amount of ram : $tram MB"
echo "Total amount of swap : $swap MB"
echo "System uptime : $up"

echo ""
echo "+------------+"
echo "|Europe nodes"
echo "+------------+"
linodeuk=$( wget -O /dev/null http://speedtest.london.linode.com/100MB-london.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Linode, London, UK: $linodeuk "
leaseweb=$( wget -O /dev/null http://mirror.leaseweb.com/speedtest/100mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Leaseweb, Haarlem, NL: $leaseweb "
ireland=$( wget -O /dev/null http://ftp.heanet.ie/pub/ubuntu-cdimage/releases/raring/release/ubuntu-13.04-server-powerpc.template 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from heanet IE: $ireland "
#elcatel=$( wget -o /dev/null http://files.ecatel.nl/speedtest/100mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
#echo "Download speed from Elcatel, NL: $elcatel "
cachefly=$( wget -O /dev/null http://cachefly.cachefly.net/100mb.test 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from CacheFly DE: $cachefly "
ovh=$( wget -O /dev/null http://proof.ovh.net/files/100Mb.dat 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Ovh FR: $ovh "
softlayer=$( wget -O /dev/null http://speedtest.ams01.softlayer.com/downloads/test500.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from softlayer Amsterdam NL: $softlayer "
i3d=$( wget -O /dev/null http://mirror.i3d.net/100mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from i3d.net, Rotterdam, NL: $i3d"
leasewebde=$( wget -O /dev/null http://mirror.de.leaseweb.net/speedtest/100mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from leaseweb DE: $leasewebde "
nforce=$( wget -O /dev/null http://mirror.nforce.com/pub/speedtests/250mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from nforce NL: $nforce "
#finland=$( wget -O /dev/null http://ftp.funet.fi/pub/Linux/INSTALL/Ubuntu/dvd-releases/releases/precise/release/ubuntu-12.04-preinstalled-desktop-armhf+ac100.tar.gz 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
#echo "Download speed from funet FI: $finland "
russia=$( wget -O /dev/null http://mirror.yandex.ru/ubuntu-cdimage/releases/raring/release/ubuntu-13.04-server-powerpc.template 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from yandex RU: $russia "
#transip=$( wget -O /dev/null http://speed.transip.nl/1gb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
#echo "Download speed from transip NL: $transip "
greece=$( wget -O /dev/null http://ftp.ntua.gr/pub/linux/ubuntu-releases-dvd/trusty/release/ubuntu-14.04-server-amd64+mac.template 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from ntua GR: $greece "
ukraine=$( wget -O /dev/null http://ftp.ua.debian.org/debian/ls-lR.gz 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )


echo "+---------+"
echo "|USA nodes"
echo "+---------+"
coloatatl=$( wget -O /dev/null http://speed.atl.coloat.com/100mb.test 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Coloat, Atlanta GA: $coloatatl "
sldltx=$( wget -O /dev/null http://speedtest.dal05.softlayer.com/downloads/test100.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Softlayer, Dallas, TX: $sldltx "
slwa=$( wget -O /dev/null http://speedtest.sea01.softlayer.com/downloads/test100.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Softlayer, Seattle, WA: $slwa "
slsjc=$( wget -O /dev/null http://speedtest.sjc01.softlayer.com/downloads/test100.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Softlayer, San Jose, CA: $slsjc "
slwdc=$( wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test100.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Softlayer, Washington, DC: $slwdc "


echo ""
echo "+------------+"
echo "|Asia pacific"
echo "+------------+"
#australia=$( wget -O /dev/null http://client.oneprovider.net.au/speedtests/50mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
#echo "Download speed from Servers AU: $australia "
linodejp=$( wget -O /dev/null http://speedtest.tokyo.linode.com/100MB-tokyo.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Linode, Tokyo, JP: $linodejp "
#aussie=$( wget -O /dev/null http://www.serversaustralia.com.au/speedtests/50mb.bin 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
#echo "Download speed from Servers2 AU: $aussie "
slsg=$( wget -O /dev/null http://speedtest.sng01.softlayer.com/downloads/test100.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from Softlayer, Singapore: $slsg "
china=$( wget -O /dev/null http://ftp.cn.debian.org/debian/dists/Debian7.6/main/Contents-source.gz 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from huaie CI: $china "
taiwan=$( wget -O /dev/null http://ftp.tw.debian.org/debian/pool/main/0/0ad/0ad-dbg_0.0.16-4_i386.deb 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from debian TW: $taiwan "

echo ""
echo "+------------+"
echo "|Exotic stuff"
echo "+------------+"
frgov=$( wget -O /dev/null http://mirror.anl.gov/pub/hirens-bootcd/Hirens.BootCD.9.2.zip 2>&1 | awk '/\/dev\/null/ {speed=$3 $4} END {gsub(/\(|\)/,"",speed); print speed}' )
echo "Download speed from France .gov FR: $frgov "
echo ""


echo ""
echo "+-------------+"
echo "|I/O Speedtest"
io=$( ( dd if=/dev/zero of=test_$$ bs=64k count=16k conv=fdatasync && rm -f test_$$ ) 2>&1 | awk -F, '{io=$NF} END { print io}' )
echo "|I/O speed: $io"
echo "+-------------+"
echo ""



