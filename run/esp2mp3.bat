C:\app\balabolka\balcon.exe -f %1 -n Helena -w %~n1.wav -fr 48 -br 16
c:\app\FormatFactory\ffmpeg -i %~n1.wav %~n1.mp3
rm %~n1.wav


