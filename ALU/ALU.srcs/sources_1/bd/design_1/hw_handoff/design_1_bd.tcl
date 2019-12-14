
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set A [ create_bd_port -dir I A ]
  set B [ create_bd_port -dir I B ]
  set Cn [ create_bd_port -dir I Cn ]
  set M0 [ create_bd_port -dir I M0 ]
  set M1 [ create_bd_port -dir I M1 ]
  set M2 [ create_bd_port -dir I M2 ]
  set Y1 [ create_bd_port -dir O Y1 ]
  set Y2 [ create_bd_port -dir O Y2 ]

  # Create instance: four_2_input_and_gate_0, and set properties
  set four_2_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_0 ]

  # Create instance: four_2_input_or_gate_0, and set properties
  set four_2_input_or_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_or_gate:1.0 four_2_input_or_gate_0 ]

  # Create instance: mux_8_to_1_0, and set properties
  set mux_8_to_1_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_0 ]

  # Create instance: mux_8_to_1_1, and set properties
  set mux_8_to_1_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:mux_8_to_1:1.0 mux_8_to_1_1 ]

  # Create instance: six_not_gate_0, and set properties
  set six_not_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_0 ]

  # Create instance: six_not_gate_1, and set properties
  set six_not_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_1 ]

  # Create instance: tri_3_input_and_gate_0, and set properties
  set tri_3_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:tri_3_input_and_gate:1.0 tri_3_input_and_gate_0 ]

  # Create instance: xup_xor2_0, and set properties
  set xup_xor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_0 ]

  # Create instance: xup_xor2_1, and set properties
  set xup_xor2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_1 ]

  # Create port connections
  connect_bd_net -net A0_1 [get_bd_ports M0] [get_bd_pins mux_8_to_1_0/A0] [get_bd_pins mux_8_to_1_1/A0] [get_bd_pins tri_3_input_and_gate_0/A1]
  connect_bd_net -net A1_1 [get_bd_ports M1] [get_bd_pins mux_8_to_1_0/A1] [get_bd_pins mux_8_to_1_1/A1] [get_bd_pins tri_3_input_and_gate_0/C1]
  connect_bd_net -net A2_1 [get_bd_ports M2] [get_bd_pins mux_8_to_1_0/A2] [get_bd_pins mux_8_to_1_1/A2] [get_bd_pins tri_3_input_and_gate_0/B1]
  connect_bd_net -net A_1 [get_bd_ports A] [get_bd_pins four_2_input_and_gate_0/A1] [get_bd_pins four_2_input_or_gate_0/A1] [get_bd_pins six_not_gate_0/A1] [get_bd_pins xup_xor2_1/a]
  connect_bd_net -net B_1 [get_bd_ports B] [get_bd_pins four_2_input_and_gate_0/A3] [get_bd_pins four_2_input_and_gate_0/B1] [get_bd_pins four_2_input_or_gate_0/A3] [get_bd_pins four_2_input_or_gate_0/B1] [get_bd_pins six_not_gate_0/A2] [get_bd_pins xup_xor2_1/b]
  connect_bd_net -net Cn_1 [get_bd_ports Cn] [get_bd_pins four_2_input_and_gate_0/B2] [get_bd_pins four_2_input_and_gate_0/B3] [get_bd_pins four_2_input_or_gate_0/B3] [get_bd_pins xup_xor2_0/b]
  connect_bd_net -net four_2_input_and_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/Y1] [get_bd_pins four_2_input_or_gate_0/A2] [get_bd_pins mux_8_to_1_0/D0] [get_bd_pins six_not_gate_1/A5]
  connect_bd_net -net four_2_input_and_gate_0_Y2 [get_bd_pins four_2_input_and_gate_0/Y2] [get_bd_pins four_2_input_or_gate_0/B2]
  connect_bd_net -net four_2_input_and_gate_0_Y3 [get_bd_pins four_2_input_and_gate_0/Y3] [get_bd_pins four_2_input_or_gate_0/A4]
  connect_bd_net -net four_2_input_and_gate_0_Y4 [get_bd_pins four_2_input_and_gate_0/Y4] [get_bd_pins four_2_input_or_gate_0/B4]
  connect_bd_net -net four_2_input_or_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/A2] [get_bd_pins four_2_input_or_gate_0/Y1] [get_bd_pins mux_8_to_1_0/D1] [get_bd_pins six_not_gate_1/A4]
  connect_bd_net -net four_2_input_or_gate_0_Y2 [get_bd_pins four_2_input_or_gate_0/Y2] [get_bd_pins mux_8_to_1_1/D5]
  connect_bd_net -net four_2_input_or_gate_0_Y3 [get_bd_pins four_2_input_and_gate_0/B4] [get_bd_pins four_2_input_or_gate_0/Y3]
  connect_bd_net -net four_2_input_or_gate_0_Y4 [get_bd_pins four_2_input_or_gate_0/Y4] [get_bd_pins mux_8_to_1_1/D6]
  connect_bd_net -net mux_8_to_1_0_Q [get_bd_ports Y1] [get_bd_pins mux_8_to_1_0/Q]
  connect_bd_net -net mux_8_to_1_1_Q [get_bd_ports Y2] [get_bd_pins mux_8_to_1_1/Q]
  connect_bd_net -net six_not_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/A4] [get_bd_pins mux_8_to_1_0/D2] [get_bd_pins six_not_gate_0/Y1] [get_bd_pins six_not_gate_1/A3]
  connect_bd_net -net six_not_gate_0_Y2 [get_bd_pins mux_8_to_1_0/D3] [get_bd_pins six_not_gate_0/Y2] [get_bd_pins six_not_gate_1/A2]
  connect_bd_net -net six_not_gate_1_Y1 [get_bd_pins mux_8_to_1_1/D4] [get_bd_pins six_not_gate_1/Y1]
  connect_bd_net -net six_not_gate_1_Y2 [get_bd_pins mux_8_to_1_1/D3] [get_bd_pins six_not_gate_1/Y2]
  connect_bd_net -net six_not_gate_1_Y3 [get_bd_pins mux_8_to_1_1/D2] [get_bd_pins six_not_gate_1/Y3]
  connect_bd_net -net six_not_gate_1_Y4 [get_bd_pins mux_8_to_1_1/D1] [get_bd_pins six_not_gate_1/Y4]
  connect_bd_net -net six_not_gate_1_Y5 [get_bd_pins mux_8_to_1_1/D0] [get_bd_pins six_not_gate_1/Y5]
  connect_bd_net -net tri_3_input_and_gate_0_Y1 [get_bd_pins mux_8_to_1_1/S_n] [get_bd_pins tri_3_input_and_gate_0/Y1]
  connect_bd_net -net xup_xnor2_0_y [get_bd_pins mux_8_to_1_0/D4] [get_bd_pins six_not_gate_1/A1] [get_bd_pins xup_xor2_0/a] [get_bd_pins xup_xor2_1/y]
  connect_bd_net -net xup_xnor2_1_y [get_bd_pins mux_8_to_1_0/D5] [get_bd_pins mux_8_to_1_0/D6] [get_bd_pins xup_xor2_0/y]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port A -pg 1 -y 430 -defaultsOSRD
preplace port Cn -pg 1 -y 210 -defaultsOSRD
preplace port B -pg 1 -y 450 -defaultsOSRD
preplace port M0 -pg 1 -y 390 -defaultsOSRD
preplace port M1 -pg 1 -y 350 -defaultsOSRD
preplace port Y1 -pg 1 -y 440 -defaultsOSRD
preplace port M2 -pg 1 -y 370 -defaultsOSRD
preplace port Y2 -pg 1 -y 140 -defaultsOSRD
preplace inst four_2_input_or_gate_0 -pg 1 -lvl 3 -y 220 -defaultsOSRD
preplace inst xup_xor2_0 -pg 1 -lvl 2 -y 430 -defaultsOSRD
preplace inst xup_xor2_1 -pg 1 -lvl 2 -y 650 -defaultsOSRD
preplace inst four_2_input_and_gate_0 -pg 1 -lvl 2 -y 220 -defaultsOSRD
preplace inst mux_8_to_1_0 -pg 1 -lvl 5 -y 450 -defaultsOSRD
preplace inst mux_8_to_1_1 -pg 1 -lvl 5 -y 150 -defaultsOSRD
preplace inst six_not_gate_0 -pg 1 -lvl 1 -y 550 -defaultsOSRD
preplace inst tri_3_input_and_gate_0 -pg 1 -lvl 4 -y -20 -defaultsOSRD
preplace inst six_not_gate_1 -pg 1 -lvl 4 -y 260 -defaultsOSRD
preplace netloc four_2_input_or_gate_0_Y1 1 1 4 100 80 NJ 80 630 360 920
preplace netloc A_1 1 0 3 -120 430 80 90 380
preplace netloc xup_xnor2_0_y 1 1 4 100 370 360 370 640 370 NJ
preplace netloc four_2_input_or_gate_0_Y2 1 3 2 620 160 NJ
preplace netloc mux_8_to_1_1_Q 1 5 1 NJ
preplace netloc four_2_input_or_gate_0_Y3 1 1 3 100 340 NJ 340 590
preplace netloc tri_3_input_and_gate_0_Y1 1 4 1 950
preplace netloc six_not_gate_1_Y1 1 4 1 880
preplace netloc four_2_input_or_gate_0_Y4 1 3 2 610 140 NJ
preplace netloc mux_8_to_1_0_Q 1 5 1 NJ
preplace netloc six_not_gate_1_Y2 1 4 1 890
preplace netloc six_not_gate_1_Y3 1 4 1 900
preplace netloc six_not_gate_0_Y1 1 1 4 60 490 NJ 490 660 490 NJ
preplace netloc xup_xnor2_1_y 1 2 3 N 430 NJ 430 900
preplace netloc six_not_gate_1_Y4 1 4 1 910
preplace netloc four_2_input_and_gate_0_Y1 1 2 3 370 100 600 380 890
preplace netloc six_not_gate_0_Y2 1 1 4 NJ 500 NJ 500 650 500 NJ
preplace netloc six_not_gate_1_Y5 1 4 1 920
preplace netloc four_2_input_and_gate_0_Y2 1 2 1 N
preplace netloc A2_1 1 0 5 NJ 60 NJ 60 NJ 60 NJ 130 NJ
preplace netloc four_2_input_and_gate_0_Y3 1 2 1 350
preplace netloc four_2_input_and_gate_0_Y4 1 2 1 340
preplace netloc Cn_1 1 0 3 NJ 210 70 350 370
preplace netloc B_1 1 0 3 -140 450 90 100 360
preplace netloc A1_1 1 0 5 NJ 50 NJ 50 NJ 50 NJ 120 NJ
preplace netloc A0_1 1 0 5 NJ 40 NJ 40 NJ 40 NJ 110 NJ
levelinfo -pg 1 -160 -10 240 490 780 1040 1130 -top -330 -bot 760
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


