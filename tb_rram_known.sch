v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -760 -570 40 -170 {flags=graph
y1=-4.4e-05
y2=4.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.39999998
x2=0.39999998
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(v1)
sweep=vin}
N 70 40 70 80 {
lab=GND}
N -70 160 70 160 {
lab=GND}
N -70 110 -70 160 {
lab=GND}
N -70 -100 -30 -100 {
lab=Vin}
N 30 -100 70 -100 {
lab=Vin}
N 70 -100 70 -50 {
lab=Vin}
N -70 -100 -70 -30 {
lab=Vin}
N -30 -100 30 -100 {
lab=Vin}
N -70 30 -70 50 {
lab=GND}
N 70 80 70 160 {
lab=GND}
N -70 50 -70 110 {
lab=GND}
C {devices/vsource.sym} -70 0 0 0 {name=V1 value="SINE(0 0.4 10 0 0 0)"  }
C {devices/gnd.sym} -50 160 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 330 -120 0 0 {name=comando_known
only_toplevel=true
value="
.inc /home/alex/Desktop/EDA/Barron_mem/rram_known_file.spice
.option savecurrents
.tran  20u 0.1
.control
       save all
       run
       write tb_rram_known.raw
.endc
"}
C {devices/launcher.sym} 0 -140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_rram_known.raw tran"
}
C {devices/lab_pin.sym} -70 -100 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 210 -430 0 0 {name=modeloMemristor
only_toplevel=true
value="
.control
	pre_osdi /home/alex/Desktop/EDA/Barron_mem/rram_known_file.osdi
.endc
.model rram_known_model rram_known_va 
.subckt rram_known TE BE
	N1 TE BE rram_known_model
.ends 
"}
C {rram_known.sym} -160 0 0 0 {name=x1
model=rram_known
spiceprefix=X
}
