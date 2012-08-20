v 20100214 2
C 40000 40000 0 0 0 title-C.sym
N 49000 51700 48000 51700 4
N 48000 51700 48000 53000 4
N 51500 53000 51500 51400 4
N 50900 51400 52300 51400 4
N 50900 51700 52000 51700 4
{
T 51000 51700 5 10 0 1 0 0 1
netname=P15V
}
N 52000 51700 52000 54300 4
{
T 52000 51700 5 10 0 1 0 0 1
netname=P15V
}
C 50100 53800 1 0 0 capacitor-1.sym
{
T 50300 54500 5 10 0 0 0 0 1
device=CAPACITOR
T 50500 54900 5 10 1 1 0 3 1
refdes=C3
T 50300 54700 5 10 0 0 0 0 1
symversion=0.1
T 50500 54700 5 10 1 1 0 3 1
value=100nF
T 50500 54500 5 10 1 1 0 3 1
description=ceramic
T 50500 54700 5 10 0 1 0 3 1
comment=C315C104M5U5TA
T 50500 54300 5 10 1 1 0 3 1
footprint=1210
}
N 51000 54000 52000 54000 4
{
T 51400 54000 5 10 0 1 0 0 1
netname=P15V
}
N 50100 54000 48500 54000 4
N 48000 51000 48000 51400 4
C 52300 51300 1 0 0 resistor-1.sym
{
T 52600 51700 5 10 0 0 0 0 1
device=RESISTOR
T 52800 52000 5 10 1 1 0 3 1
refdes=R4
T 52800 51800 5 10 1 1 0 3 1
value=100
T 52800 51600 5 10 1 1 0 3 1
footprint=1206
}
N 53200 51400 54000 51400 4
C 49000 50900 1 0 0 LF356-1.sym
{
T 49300 54050 5 10 0 0 0 0 1
device=LF356
T 50600 52300 5 10 1 1 0 6 1
refdes=U2
T 49900 52450 5 10 1 1 0 0 1
footprint=SO8
}
C 48100 50700 1 0 1 gnd-1.sym
N 49000 51400 48000 51400 4
C 49000 52900 1 0 0 resistor-1.sym
{
T 49300 53300 5 10 0 0 0 0 1
device=RESISTOR
T 49500 53600 5 10 1 1 0 3 1
refdes=R3
T 49500 53400 5 10 1 1 0 3 1
value=6.65K
T 49500 53200 5 10 1 1 0 3 1
footprint=0805
}
N 51500 53000 49900 53000 4
N 47000 53000 49000 53000 4
C 51800 54300 1 0 0 generic-power.sym
{
T 52000 54550 5 10 1 1 0 3 1
net=P15V:1
}
C 45600 52900 1 0 0 input-2.sym
{
T 46100 53000 5 10 1 1 0 7 1
net=SMALL:1
T 46200 53600 5 10 0 0 0 0 1
device=none
T 46100 53000 5 10 0 1 0 7 1
value=INPUT
}
C 54000 51300 1 0 0 output-2.sym
{
T 54900 51400 5 10 1 1 0 1 1
net=OUTPUT:1
T 54200 52000 5 10 0 0 0 0 1
device=none
T 54900 51400 5 10 0 1 0 1 1
value=OUTPUT
}
C 48700 49300 1 180 0 generic-power.sym
{
T 48500 49050 5 10 1 1 180 3 1
net=N15V:1
}
N 48500 49300 48500 51100 4
N 48500 51100 49000 51100 4
C 48600 53200 1 0 1 gnd-1.sym
N 48500 53500 48500 54000 4
C 50600 49400 1 0 1 capacitor-1.sym
{
T 50400 50100 5 10 0 0 0 6 1
device=CAPACITOR
T 50200 50500 5 10 1 1 0 3 1
refdes=C5
T 50400 50300 5 10 0 0 0 6 1
symversion=0.1
T 50200 50300 5 10 1 1 0 3 1
value=100nF
T 50200 50100 5 10 1 1 0 3 1
description=ceramic
T 50200 50300 5 10 0 1 0 3 1
comment=C315C104M5U5TA
T 50200 49900 5 10 1 1 0 3 1
footprint=1210
}
N 50600 49600 52200 49600 4
N 52200 49100 52200 49600 4
C 52100 48800 1 0 0 gnd-1.sym
N 49700 49600 48500 49600 4
C 50900 45700 1 0 0 gnd-1.sym
N 49000 46600 51000 46600 4
N 51000 46600 51000 46000 4
C 49700 44700 1 180 0 generic-power.sym
{
T 49500 44450 5 10 1 1 180 3 1
net=N15V:1
}
N 49500 44700 49500 46300 4
N 49500 46300 49000 46300 4
C 49800 46900 1 0 0 generic-power.sym
{
T 50000 47150 5 10 1 1 0 3 1
net=P15V:1
}
N 49000 46000 50000 46000 4
N 50000 46000 50000 46900 4
N 49000 45700 51900 45700 4
C 51900 45600 1 0 0 output-2.sym
{
T 52800 45700 5 10 1 1 0 1 1
net=OUTPUT:1
T 52100 46300 5 10 0 0 0 0 1
device=none
T 52800 45700 5 10 0 1 0 1 1
value=OUTPUT
}
C 47300 45500 1 0 0 connector5-1.sym
{
T 49100 47000 5 10 0 0 0 0 1
device=CONNECTOR_5
T 47400 47200 5 10 1 1 0 0 1
refdes=CONN1
T 47300 45500 5 10 1 1 0 0 1
footprint=JUMPER6
}
