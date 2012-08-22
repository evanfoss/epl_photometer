#
# File Name Makefile
# By Evan Foss
# Date 2010.05.07
# Project 
#
# Description
# 
#
# Requirements
#
#

#Project Name
NAME = opticamp
#Project Schematics
SCHEMATICS = transimpedance.sch cabledrive.sch hidden-magic.sch
#Project Netlists
NETLISTS = $(NAME).net
#Project SPICE Simulation Data
SPICEDATA = $(NAME).dat
#Project SPICE Data to Graph
SPICEGRAPH = $(NAME)SPICE.csv
#Project GNUCAP Simulation Data

#Project GNUCAP Data to Graph

#Project Graphing Programs
GRAPHCMDFILE_GNUPLOT = plot.gnu
#Project Schematics to PCB File
SCH2PCB = opticamp.prj
#Project Printed Circuit Boards
PCBS = opticamp.pcb
#Project Gerbers
GERBERS = $(NAME).fab.gbr $(NAME).plated-drill.cnc $(NAME).frontsilk.gbr $(NAME).front.gbr $(NAME).frontmask.gbr $(NAME).back.gbr  $(NAME).backmask.gbr

#
## Text Editor
TEXTEDITOR = vi
#
## Math Tool (you still have to type notebook() after this starts though)
MATHTOOL = sage
MATHFLAGS = 
#
## Schematic Capture
SCHTOOL = gschem
SCHFLAGS = -q
#
## Schematic Library
SCHLIB = gschlas
SCHLIBFLAGS = -e
#
## Simulation Tool
SIMTOOL = ngspice
SIMFLAGS = -n -b
#
## Netlist Generator
NETTOOL = gnetlist
NETFLAGS = -g spice-sdb -o 
NETDRC = -g drc2 -o drcerrors-tmp.text
#
## Graphing Tool
GRAPHTOOL_GNUPLOT = gnuplot
GRAPHFLAGS_GNUPLOT = -persist
#
## Schematic to PCB Tool
SCH2PCBTOOL = gsch2pcb
# 
## PCB Tool
PCBTOOL = pcb
#
## Gerber Viewer
PCBVIEW = gerbv
#
## BOM Generation tool
BOMTOOL = pcb
BOMFLAGS = -x bom


all:
	$(TEXTEDITOR) Makefile

change:
	$(SCHTOOL) $(SCHFLAGS)  $(SCHEMATICS)

simulation:
	$(NETTOOL) $(NETFLAGS) $(NETLISTS) $(SCHEMATICS)
	cat $(NETLISTS)
	$(SIMTOOL) $(SIMFLAGS) $(NETLISTS) -o $(SPICEDATA)
	./stripper.pl > $(SPICEGRAPH)

graph:
	$(GRAPHTOOL_GNUPLOT) $(GRAPHFLAGS_GNUPLOT) $(GRAPHCMDFILE_GNUPLOT)

math:
	$(MATHTOOL) $(MATHFLAGS)

sch2pcb:
	$(SCH2PCBTOOL) $(SCH2PCB)

pcb:    sch2pcb
	$(PCBTOOL) $(PCBS)

gerbv:
	$(PCBVIEW) $(PCBVIEWFLAGS) $(GERBERS)

bom:
	$(BOMTOOL) $(BOMFLAGS) $(PCBS)

alberta:
	mv $(NAME).frontsilk.gbr cslk.gbr
	mv $(NAME).front.gbr compont.gbr
	mv $(NAME).frontmask.gbr cmsk.gbr
	mv $(NAME).back.gbr solder.gbr
	mv $(NAME).backmask.gbr smsk.gbr
	mv $(NAME).plated-drill.cnc drill.cnc
	rm $(NAME).fab.gbr $(NAME).frontpaste.gbr 
	zip -jk $(NAME).zip *.gbr drill.cnc ascorder.txt READ.ME
	echo "Do not forget to change the ascorder.txt and READ.ME"

clean:
	rm *.sch~
	rm *.net
	rm *.dat


