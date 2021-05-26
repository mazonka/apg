#!/bin/sh

[ -z "$1" ] && exit

cwd="$(pwd)"
tm="/tmp$cwd"

sp="$(echo "$tm" | grep " ")"

if [ "$sp" != "" ]; then
echo "path [$sp] contains spaces, use rcppsp script"
exit
fi

if [ "$1" = "clean" ]; then
rm -rf $tm
exit
fi

[ -d "$tm" ] || mkdir -p "$tm"

cppname="$1"
name=${1%.*}
exename="$name.exe"
makname="$name.mak"
fullmakname="$tm/$makname"
wfullexename="$(cygpath -m "$tm/$exename")"
wfullcppname="$(cygpath -m "$cwd/$cppname")"

if [ ! -f "$fullmakname" ]; then
#echo "creating $makname"
echo "$(echo $tm/$exename | sed 's/\ /\\\ /'): $(echo $cwd/$cppname | sed 's/\ /\\\ /')" > "$fullmakname"
echo "	@rm -f \"$tm/$exename\"" >> "$fullmakname"
echo "	@cl -EHsc -Ox -nologo \"$wfullcppname\" -Fe\"$wfullexename\"" >> "$fullmakname"
echo "	@rm -f \"$name.obj\"" >> "$fullmakname"
fi

make -f "$fullmakname" | grep -v "is up to date" | grep -v "^$1\$" 2>/dev/null

shift
[ -f "$tm/$exename" ] && "$tm/$exename" $*
