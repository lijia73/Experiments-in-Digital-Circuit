
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
  set B0 [ create_bd_port -dir I B0 ]
  set B1 [ create_bd_port -dir I B1 ]
  set B2 [ create_bd_port -dir I B2 ]
  set B3 [ create_bd_port -dir I B3 ]
  set a [ create_bd_port -dir O a ]
  set b [ create_bd_port -dir O b ]
  set c [ create_bd_port -dir O c ]
  set d [ create_bd_port -dir O d ]
  set e [ create_bd_port -dir O e ]
  set f [ create_bd_port -dir O f ]
  set g [ create_bd_port -dir O g ]

  # Create instance: four_2_input_and_gate_0, and set properties
  set four_2_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_0 ]

  # Create instance: four_2_input_and_gate_1, and set properties
  set four_2_input_and_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_1 ]

  # Create instance: four_2_input_and_gate_2, and set properties
  set four_2_input_and_gate_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_2 ]

  # Create instance: four_2_input_and_gate_3, and set properties
  set four_2_input_and_gate_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_3 ]

  # Create instance: four_2_input_and_gate_4, and set properties
  set four_2_input_and_gate_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_4 ]

  # Create instance: four_2_input_and_gate_6, and set properties
  set four_2_input_and_gate_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:four_2_input_and_gate:1.0 four_2_input_and_gate_6 ]

  # Create instance: six_not_gate_0, and set properties
  set six_not_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_0 ]

  # Create instance: six_not_gate_1, and set properties
  set six_not_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_1 ]

  # Create instance: six_not_gate_2, and set properties
  set six_not_gate_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_2 ]

  # Create instance: six_not_gate_3, and set properties
  set six_not_gate_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_3 ]

  # Create instance: six_not_gate_4, and set properties
  set six_not_gate_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_4 ]

  # Create instance: six_not_gate_5, and set properties
  set six_not_gate_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_5 ]

  # Create instance: six_not_gate_6, and set properties
  set six_not_gate_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_6 ]

  # Create instance: six_not_gate_7, and set properties
  set six_not_gate_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_7 ]

  # Create instance: six_not_gate_8, and set properties
  set six_not_gate_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:six_not_gate:1.0 six_not_gate_8 ]

  # Create instance: tri_3_input_and_gate_0, and set properties
  set tri_3_input_and_gate_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:tri_3_input_and_gate:1.0 tri_3_input_and_gate_0 ]

  # Create instance: tri_3_input_and_gate_1, and set properties
  set tri_3_input_and_gate_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:tri_3_input_and_gate:1.0 tri_3_input_and_gate_1 ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and2_1, and set properties
  set xup_and2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and2:1.0 xup_and2_1 ]

  # Create instance: xup_and3_0, and set properties
  set xup_and3_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_0 ]

  # Create instance: xup_and3_1, and set properties
  set xup_and3_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_1 ]

  # Create instance: xup_and3_2, and set properties
  set xup_and3_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_and3:1.0 xup_and3_2 ]

  # Create instance: xup_or4_0, and set properties
  set xup_or4_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_0 ]

  # Create instance: xup_or4_1, and set properties
  set xup_or4_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_1 ]

  # Create instance: xup_or4_2, and set properties
  set xup_or4_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or4:1.0 xup_or4_2 ]

  # Create instance: xup_or5_0, and set properties
  set xup_or5_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or5:1.0 xup_or5_0 ]

  # Create instance: xup_or5_1, and set properties
  set xup_or5_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or5:1.0 xup_or5_1 ]

  # Create instance: xup_or5_2, and set properties
  set xup_or5_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or5:1.0 xup_or5_2 ]

  # Create instance: xup_or6_0, and set properties
  set xup_or6_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_or6:1.0 xup_or6_0 ]

  # Create instance: xup_xor2_0, and set properties
  set xup_xor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_0 ]

  # Create instance: xup_xor2_1, and set properties
  set xup_xor2_1 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_1 ]

  # Create instance: xup_xor2_2, and set properties
  set xup_xor2_2 [ create_bd_cell -type ip -vlnv xilinx.com:xup:xup_xor2:1.0 xup_xor2_2 ]

  # Create port connections
  connect_bd_net -net A2_1 [get_bd_ports B1] [get_bd_pins four_2_input_and_gate_0/A4] [get_bd_pins four_2_input_and_gate_0/B3] [get_bd_pins four_2_input_and_gate_3/B2] [get_bd_pins four_2_input_and_gate_3/B4] [get_bd_pins four_2_input_and_gate_4/B4] [get_bd_pins four_2_input_and_gate_6/B1] [get_bd_pins four_2_input_and_gate_6/B2] [get_bd_pins six_not_gate_0/A2] [get_bd_pins six_not_gate_1/A2] [get_bd_pins six_not_gate_2/A2] [get_bd_pins six_not_gate_3/A2] [get_bd_pins six_not_gate_4/A2] [get_bd_pins six_not_gate_5/A2] [get_bd_pins six_not_gate_6/A2] [get_bd_pins tri_3_input_and_gate_0/C2] [get_bd_pins xup_xor2_2/a]
  connect_bd_net -net A3_1 [get_bd_ports B2] [get_bd_pins four_2_input_and_gate_0/B4] [get_bd_pins four_2_input_and_gate_3/B3] [get_bd_pins four_2_input_and_gate_4/B2] [get_bd_pins six_not_gate_0/A3] [get_bd_pins six_not_gate_1/A3] [get_bd_pins six_not_gate_2/A3] [get_bd_pins six_not_gate_3/A3] [get_bd_pins six_not_gate_4/A3] [get_bd_pins six_not_gate_5/A3] [get_bd_pins six_not_gate_6/A3] [get_bd_pins tri_3_input_and_gate_1/A1] [get_bd_pins xup_and2_0/b] [get_bd_pins xup_and3_1/c] [get_bd_pins xup_and3_2/c] [get_bd_pins xup_xor2_1/b]
  connect_bd_net -net A4_1 [get_bd_ports B3] [get_bd_pins four_2_input_and_gate_0/A2] [get_bd_pins four_2_input_and_gate_3/A3] [get_bd_pins four_2_input_and_gate_3/A4] [get_bd_pins four_2_input_and_gate_4/A3] [get_bd_pins four_2_input_and_gate_4/A4] [get_bd_pins four_2_input_and_gate_6/A3] [get_bd_pins four_2_input_and_gate_6/A4] [get_bd_pins six_not_gate_0/A4] [get_bd_pins six_not_gate_1/A4] [get_bd_pins six_not_gate_2/A4] [get_bd_pins six_not_gate_3/A4] [get_bd_pins six_not_gate_4/A4] [get_bd_pins six_not_gate_5/A4] [get_bd_pins six_not_gate_6/A4] [get_bd_pins tri_3_input_and_gate_0/B3] [get_bd_pins tri_3_input_and_gate_1/A2] [get_bd_pins xup_and2_1/b] [get_bd_pins xup_and3_0/c] [get_bd_pins xup_xor2_1/a]
  connect_bd_net -net B0_1 [get_bd_ports B0] [get_bd_pins four_2_input_and_gate_2/A3] [get_bd_pins four_2_input_and_gate_2/B2] [get_bd_pins four_2_input_and_gate_6/B3] [get_bd_pins six_not_gate_0/A1] [get_bd_pins six_not_gate_1/A1] [get_bd_pins six_not_gate_2/A1] [get_bd_pins six_not_gate_3/A1] [get_bd_pins six_not_gate_4/A1] [get_bd_pins six_not_gate_5/A1] [get_bd_pins six_not_gate_6/A1] [get_bd_pins tri_3_input_and_gate_0/C3] [get_bd_pins tri_3_input_and_gate_1/B1] [get_bd_pins xup_and3_0/b] [get_bd_pins xup_xor2_0/a] [get_bd_pins xup_xor2_2/b]
  connect_bd_net -net four_2_input_and_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/Y1] [get_bd_pins xup_or6_0/a]
  connect_bd_net -net four_2_input_and_gate_0_Y2 [get_bd_pins four_2_input_and_gate_0/Y2] [get_bd_pins xup_or6_0/b]
  connect_bd_net -net four_2_input_and_gate_0_Y3 [get_bd_pins four_2_input_and_gate_0/Y3] [get_bd_pins xup_or6_0/c]
  connect_bd_net -net four_2_input_and_gate_0_Y4 [get_bd_pins four_2_input_and_gate_0/Y4] [get_bd_pins xup_or6_0/d]
  connect_bd_net -net four_2_input_and_gate_1_Y1 [get_bd_pins four_2_input_and_gate_1/Y1] [get_bd_pins xup_or4_0/a]
  connect_bd_net -net four_2_input_and_gate_1_Y2 [get_bd_pins four_2_input_and_gate_1/Y2] [get_bd_pins xup_or4_0/b]
  connect_bd_net -net four_2_input_and_gate_1_Y3 [get_bd_pins four_2_input_and_gate_1/Y3] [get_bd_pins xup_or4_0/c]
  connect_bd_net -net four_2_input_and_gate_2_Y1 [get_bd_pins four_2_input_and_gate_2/Y1] [get_bd_pins xup_or4_1/a]
  connect_bd_net -net four_2_input_and_gate_2_Y2 [get_bd_pins four_2_input_and_gate_2/Y2] [get_bd_pins xup_or4_1/b]
  connect_bd_net -net four_2_input_and_gate_2_Y3 [get_bd_pins four_2_input_and_gate_2/Y3] [get_bd_pins xup_or4_1/c]
  connect_bd_net -net four_2_input_and_gate_3_Y1 [get_bd_pins four_2_input_and_gate_3/Y1] [get_bd_pins xup_or4_2/a]
  connect_bd_net -net four_2_input_and_gate_3_Y2 [get_bd_pins four_2_input_and_gate_3/Y2] [get_bd_pins xup_or4_2/b]
  connect_bd_net -net four_2_input_and_gate_3_Y3 [get_bd_pins four_2_input_and_gate_3/Y3] [get_bd_pins xup_or4_2/c]
  connect_bd_net -net four_2_input_and_gate_3_Y4 [get_bd_pins four_2_input_and_gate_3/Y4] [get_bd_pins xup_or4_2/d]
  connect_bd_net -net four_2_input_and_gate_4_Y1 [get_bd_pins four_2_input_and_gate_4/Y1] [get_bd_pins xup_or5_1/a]
  connect_bd_net -net four_2_input_and_gate_4_Y2 [get_bd_pins four_2_input_and_gate_4/Y2] [get_bd_pins xup_or5_1/b]
  connect_bd_net -net four_2_input_and_gate_4_Y3 [get_bd_pins four_2_input_and_gate_4/Y3] [get_bd_pins xup_or5_1/c]
  connect_bd_net -net four_2_input_and_gate_4_Y4 [get_bd_pins four_2_input_and_gate_4/Y4] [get_bd_pins xup_or5_1/d]
  connect_bd_net -net four_2_input_and_gate_6_Y1 [get_bd_pins four_2_input_and_gate_6/Y1] [get_bd_pins xup_or5_2/a]
  connect_bd_net -net four_2_input_and_gate_6_Y2 [get_bd_pins four_2_input_and_gate_6/Y2] [get_bd_pins xup_or5_2/b]
  connect_bd_net -net four_2_input_and_gate_6_Y3 [get_bd_pins four_2_input_and_gate_6/Y3] [get_bd_pins xup_or5_2/c]
  connect_bd_net -net four_2_input_and_gate_6_Y4 [get_bd_pins four_2_input_and_gate_6/Y4] [get_bd_pins xup_or5_2/d]
  connect_bd_net -net six_not_gate_0_Y1 [get_bd_pins four_2_input_and_gate_0/A1] [get_bd_pins four_2_input_and_gate_0/B2] [get_bd_pins six_not_gate_0/Y1]
  connect_bd_net -net six_not_gate_0_Y2 [get_bd_pins six_not_gate_0/Y2] [get_bd_pins tri_3_input_and_gate_1/C2]
  connect_bd_net -net six_not_gate_0_Y3 [get_bd_pins four_2_input_and_gate_0/B1] [get_bd_pins six_not_gate_0/Y3] [get_bd_pins tri_3_input_and_gate_1/B2]
  connect_bd_net -net six_not_gate_0_Y4 [get_bd_pins four_2_input_and_gate_0/A3] [get_bd_pins six_not_gate_0/Y4] [get_bd_pins tri_3_input_and_gate_1/C1]
  connect_bd_net -net six_not_gate_1_Y1 [get_bd_pins four_2_input_and_gate_1/B1] [get_bd_pins six_not_gate_1/Y1]
  connect_bd_net -net six_not_gate_1_Y2 [get_bd_pins six_not_gate_1/Y2] [get_bd_pins xup_and3_0/a] [get_bd_pins xup_xor2_0/b]
  connect_bd_net -net six_not_gate_1_Y3 [get_bd_pins four_2_input_and_gate_1/A1] [get_bd_pins four_2_input_and_gate_1/B2] [get_bd_pins six_not_gate_1/Y3]
  connect_bd_net -net six_not_gate_1_Y4 [get_bd_pins four_2_input_and_gate_1/A2] [get_bd_pins four_2_input_and_gate_1/A3] [get_bd_pins six_not_gate_1/Y4]
  connect_bd_net -net six_not_gate_2_Y2 [get_bd_pins four_2_input_and_gate_2/A1] [get_bd_pins four_2_input_and_gate_2/A2] [get_bd_pins six_not_gate_2/Y2]
  connect_bd_net -net six_not_gate_2_Y3 [get_bd_pins four_2_input_and_gate_2/B1] [get_bd_pins six_not_gate_2/Y3]
  connect_bd_net -net six_not_gate_2_Y4 [get_bd_pins four_2_input_and_gate_2/B3] [get_bd_pins six_not_gate_2/Y4]
  connect_bd_net -net six_not_gate_3_Y1 [get_bd_pins six_not_gate_3/Y1] [get_bd_pins tri_3_input_and_gate_0/A1]
  connect_bd_net -net six_not_gate_3_Y2 [get_bd_pins six_not_gate_3/Y2] [get_bd_pins tri_3_input_and_gate_0/B1] [get_bd_pins xup_and2_1/a]
  connect_bd_net -net six_not_gate_3_Y3 [get_bd_pins six_not_gate_3/Y3] [get_bd_pins tri_3_input_and_gate_0/A3] [get_bd_pins tri_3_input_and_gate_0/B2] [get_bd_pins tri_3_input_and_gate_0/C1]
  connect_bd_net -net six_not_gate_3_Y4 [get_bd_pins six_not_gate_3/Y4] [get_bd_pins tri_3_input_and_gate_0/A2]
  connect_bd_net -net six_not_gate_4_Y1 [get_bd_pins four_2_input_and_gate_3/A2] [get_bd_pins four_2_input_and_gate_3/B1] [get_bd_pins six_not_gate_4/Y1]
  connect_bd_net -net six_not_gate_4_Y3 [get_bd_pins four_2_input_and_gate_3/A1] [get_bd_pins six_not_gate_4/Y3]
  connect_bd_net -net six_not_gate_5_Y1 [get_bd_pins four_2_input_and_gate_4/A1] [get_bd_pins four_2_input_and_gate_4/A2] [get_bd_pins six_not_gate_5/Y1]
  connect_bd_net -net six_not_gate_5_Y2 [get_bd_pins four_2_input_and_gate_4/B1] [get_bd_pins six_not_gate_5/Y2] [get_bd_pins xup_and3_1/b]
  connect_bd_net -net six_not_gate_5_Y3 [get_bd_pins four_2_input_and_gate_4/B3] [get_bd_pins six_not_gate_5/Y3]
  connect_bd_net -net six_not_gate_5_Y4 [get_bd_pins six_not_gate_5/Y4] [get_bd_pins xup_and3_1/a]
  connect_bd_net -net six_not_gate_6_Y1 [get_bd_pins four_2_input_and_gate_6/A1] [get_bd_pins six_not_gate_6/Y1]
  connect_bd_net -net six_not_gate_6_Y2 [get_bd_pins six_not_gate_6/Y2] [get_bd_pins xup_and3_2/b]
  connect_bd_net -net six_not_gate_6_Y3 [get_bd_pins four_2_input_and_gate_6/A2] [get_bd_pins four_2_input_and_gate_6/B4] [get_bd_pins six_not_gate_6/Y3]
  connect_bd_net -net six_not_gate_6_Y4 [get_bd_pins six_not_gate_6/Y4] [get_bd_pins xup_and3_2/a]
  connect_bd_net -net six_not_gate_7_Y1 [get_bd_ports e] [get_bd_pins six_not_gate_7/Y1]
  connect_bd_net -net six_not_gate_7_Y2 [get_bd_ports d] [get_bd_pins six_not_gate_7/Y2]
  connect_bd_net -net six_not_gate_7_Y3 [get_bd_ports f] [get_bd_pins six_not_gate_7/Y3]
  connect_bd_net -net six_not_gate_7_Y4 [get_bd_ports g] [get_bd_pins six_not_gate_7/Y4]
  connect_bd_net -net six_not_gate_8_Y1 [get_bd_ports a] [get_bd_pins six_not_gate_8/Y1]
  connect_bd_net -net six_not_gate_8_Y2 [get_bd_ports b] [get_bd_pins six_not_gate_8/Y2]
  connect_bd_net -net six_not_gate_8_Y3 [get_bd_ports c] [get_bd_pins six_not_gate_8/Y3]
  connect_bd_net -net tri_3_input_and_gate_0_Y1 [get_bd_pins tri_3_input_and_gate_0/Y1] [get_bd_pins xup_or5_0/a]
  connect_bd_net -net tri_3_input_and_gate_0_Y2 [get_bd_pins tri_3_input_and_gate_0/Y2] [get_bd_pins xup_or5_0/b]
  connect_bd_net -net tri_3_input_and_gate_0_Y3 [get_bd_pins tri_3_input_and_gate_0/Y3] [get_bd_pins xup_or5_0/c]
  connect_bd_net -net tri_3_input_and_gate_1_Y1 [get_bd_pins tri_3_input_and_gate_1/Y1] [get_bd_pins xup_or6_0/e]
  connect_bd_net -net tri_3_input_and_gate_1_Y2 [get_bd_pins tri_3_input_and_gate_1/Y2] [get_bd_pins xup_or6_0/f]
  connect_bd_net -net xup_and2_0_y [get_bd_pins xup_and2_0/y] [get_bd_pins xup_or5_0/e]
  connect_bd_net -net xup_and2_1_y [get_bd_pins xup_and2_1/y] [get_bd_pins xup_or5_0/d]
  connect_bd_net -net xup_and3_0_y [get_bd_pins xup_and3_0/y] [get_bd_pins xup_or4_0/d]
  connect_bd_net -net xup_and3_1_y [get_bd_pins xup_and3_1/y] [get_bd_pins xup_or5_1/e]
  connect_bd_net -net xup_and3_2_y [get_bd_pins xup_and3_2/y] [get_bd_pins xup_or5_2/e]
  connect_bd_net -net xup_or4_0_y [get_bd_pins six_not_gate_8/A2] [get_bd_pins xup_or4_0/y]
  connect_bd_net -net xup_or4_1_y [get_bd_pins six_not_gate_8/A3] [get_bd_pins xup_or4_1/y]
  connect_bd_net -net xup_or4_2_y [get_bd_pins six_not_gate_7/A1] [get_bd_pins xup_or4_2/y]
  connect_bd_net -net xup_or5_0_y [get_bd_pins six_not_gate_7/A2] [get_bd_pins xup_or5_0/y]
  connect_bd_net -net xup_or5_1_y [get_bd_pins six_not_gate_7/A3] [get_bd_pins xup_or5_1/y]
  connect_bd_net -net xup_or5_2_y [get_bd_pins six_not_gate_7/A4] [get_bd_pins xup_or5_2/y]
  connect_bd_net -net xup_or6_0_y [get_bd_pins six_not_gate_8/A1] [get_bd_pins xup_or6_0/y]
  connect_bd_net -net xup_xor2_0_y [get_bd_pins four_2_input_and_gate_1/B3] [get_bd_pins xup_xor2_0/y]
  connect_bd_net -net xup_xor2_1_y [get_bd_pins xup_or4_1/d] [get_bd_pins xup_xor2_1/y]
  connect_bd_net -net xup_xor2_2_y [get_bd_pins xup_and2_0/a] [get_bd_pins xup_xor2_2/y]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port B0 -pg 1 -y 1490 -defaultsOSRD
preplace port B1 -pg 1 -y 1510 -defaultsOSRD
preplace port B2 -pg 1 -y 1540 -defaultsOSRD
preplace port B3 -pg 1 -y 1590 -defaultsOSRD
preplace port a -pg 1 -y -200 -defaultsOSRD
preplace port b -pg 1 -y 270 -defaultsOSRD
preplace port c -pg 1 -y 510 -defaultsOSRD
preplace port d -pg 1 -y 770 -defaultsOSRD
preplace port e -pg 1 -y 1060 -defaultsOSRD
preplace port f -pg 1 -y 1150 -defaultsOSRD
preplace port g -pg 1 -y 1330 -defaultsOSRD
preplace inst xup_or5_1 -pg 1 -lvl 10 -y 1310 -defaultsOSRD
preplace inst six_not_gate_5 -pg 1 -lvl 3 -y 1150 -defaultsOSRD
preplace inst xup_or5_2 -pg 1 -lvl 6 -y 1590 -defaultsOSRD
preplace inst six_not_gate_6 -pg 1 -lvl 2 -y 1420 -defaultsOSRD
preplace inst six_not_gate_7 -pg 1 -lvl 14 -y 1160 -defaultsOSRD
preplace inst xup_or4_0 -pg 1 -lvl 13 -y 270 -defaultsOSRD
preplace inst six_not_gate_8 -pg 1 -lvl 14 -y 70 -defaultsOSRD
preplace inst xup_or4_1 -pg 1 -lvl 12 -y 510 -defaultsOSRD
preplace inst xup_or6_0 -pg 1 -lvl 9 -y -200 -defaultsOSRD
preplace inst xup_or4_2 -pg 1 -lvl 10 -y 1060 -defaultsOSRD
preplace inst xup_xor2_0 -pg 1 -lvl 11 -y 320 -defaultsOSRD
preplace inst xup_xor2_1 -pg 1 -lvl 1 -y 560 -defaultsOSRD
preplace inst xup_and3_0 -pg 1 -lvl 12 -y 360 -defaultsOSRD
preplace inst xup_and3_1 -pg 1 -lvl 6 -y 1450 -defaultsOSRD
preplace inst xup_xor2_2 -pg 1 -lvl 6 -y 810 -defaultsOSRD
preplace inst four_2_input_and_gate_0 -pg 1 -lvl 7 -y -330 -defaultsOSRD
preplace inst xup_and3_2 -pg 1 -lvl 3 -y 1630 -defaultsOSRD
preplace inst four_2_input_and_gate_1 -pg 1 -lvl 12 -y 180 -defaultsOSRD
preplace inst four_2_input_and_gate_2 -pg 1 -lvl 8 -y 430 -defaultsOSRD
preplace inst six_not_gate_0 -pg 1 -lvl 1 -y -180 -defaultsOSRD
preplace inst four_2_input_and_gate_3 -pg 1 -lvl 7 -y 1070 -defaultsOSRD
preplace inst tri_3_input_and_gate_0 -pg 1 -lvl 8 -y 680 -defaultsOSRD
preplace inst six_not_gate_1 -pg 1 -lvl 8 -y 200 -defaultsOSRD
preplace inst four_2_input_and_gate_4 -pg 1 -lvl 6 -y 1260 -defaultsOSRD
preplace inst six_not_gate_2 -pg 1 -lvl 7 -y 450 -defaultsOSRD
preplace inst tri_3_input_and_gate_1 -pg 1 -lvl 7 -y -80 -defaultsOSRD
preplace inst xup_and2_0 -pg 1 -lvl 7 -y 820 -defaultsOSRD
preplace inst six_not_gate_3 -pg 1 -lvl 6 -y 650 -defaultsOSRD
preplace inst four_2_input_and_gate_6 -pg 1 -lvl 4 -y 1440 -defaultsOSRD
preplace inst six_not_gate_4 -pg 1 -lvl 5 -y 950 -defaultsOSRD
preplace inst xup_and2_1 -pg 1 -lvl 8 -y 890 -defaultsOSRD
preplace inst xup_or5_0 -pg 1 -lvl 12 -y 770 -defaultsOSRD
preplace netloc xup_or5_1_y 1 10 4 500 1150 NJ 1150 NJ 1150 NJ
preplace netloc four_2_input_and_gate_4_Y1 1 6 4 N 1230 N 1230 N 1230 350
preplace netloc four_2_input_and_gate_1_Y1 1 12 1 950
preplace netloc four_2_input_and_gate_4_Y2 1 6 4 N 1250 N 1250 N 1250 340
preplace netloc four_2_input_and_gate_1_Y2 1 12 1 930
preplace netloc four_2_input_and_gate_4_Y3 1 6 4 N 1270 N 1270 N 1270 330
preplace netloc four_2_input_and_gate_1_Y3 1 12 1 920
preplace netloc four_2_input_and_gate_6_Y1 1 4 2 NJ 1410 -650
preplace netloc four_2_input_and_gate_6_Y2 1 4 2 NJ 1430 -660
preplace netloc four_2_input_and_gate_4_Y4 1 6 4 N 1290 N 1290 N 1290 320
preplace netloc four_2_input_and_gate_6_Y3 1 4 2 NJ 1450 -670
preplace netloc xup_and3_1_y 1 6 4 -310 1350 NJ 1350 NJ 1350 NJ
preplace netloc four_2_input_and_gate_6_Y4 1 4 2 NJ 1470 -680
preplace netloc six_not_gate_3_Y1 1 6 2 NJ 600 N
preplace netloc six_not_gate_3_Y2 1 6 2 NJ 620 -100
preplace netloc six_not_gate_3_Y3 1 6 2 NJ 640 -70
preplace netloc six_not_gate_4_Y1 1 5 2 NJ 900 -370
preplace netloc six_not_gate_3_Y4 1 6 2 NJ 660 N
preplace netloc xup_or6_0_y 1 9 5 NJ -200 NJ -200 NJ -200 NJ -200 1100
preplace netloc six_not_gate_4_Y3 1 5 2 NJ 940 -380
preplace netloc four_2_input_and_gate_3_Y1 1 7 3 -70 1030 NJ 1030 NJ
preplace netloc four_2_input_and_gate_3_Y2 1 7 3 -80 1050 NJ 1050 NJ
preplace netloc four_2_input_and_gate_3_Y3 1 7 3 -70 1070 NJ 1070 NJ
preplace netloc B0_1 1 0 12 -1610 1260 -1400 1260 -1260 1260 -1050 900 -830 820 -640 400 -330 150 -60 310 N 310 NJ 310 NJ 260 NJ
preplace netloc xup_and2_0_y 1 7 5 -60 810 NJ 810 NJ 810 NJ 810 NJ
preplace netloc four_2_input_and_gate_3_Y4 1 7 3 -80 1090 NJ 1090 NJ
preplace netloc xup_and2_1_y 1 8 4 160 790 NJ 790 NJ 790 NJ
preplace netloc A2_1 1 0 8 -1600 1270 NJ 1270 NJ 1270 NJ 920 NJ 850 NJ 530 NJ 170 NJ
preplace netloc xup_or5_0_y 1 12 2 NJ 770 1100
preplace netloc six_not_gate_5_Y1 1 3 3 NJ 1100 N 1100 -600
preplace netloc xup_xor2_1_y 1 1 11 -1400 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 550 NJ 540 NJ 540 NJ 540 NJ
preplace netloc xup_or4_2_y 1 10 4 NJ 1060 NJ 1060 NJ 1060 1090
preplace netloc six_not_gate_5_Y2 1 3 3 NJ 1120 N 1120 -630
preplace netloc A3_1 1 0 8 -1590 1410 NJ 1520 NJ 1050 NJ 1050 NJ 1050 NJ 750 NJ 190 NJ
preplace netloc six_not_gate_5_Y3 1 3 3 NJ 1140 N 1140 -620
preplace netloc six_not_gate_5_Y4 1 3 3 NJ 1160 N 1160 -640
preplace netloc xup_and3_0_y 1 12 1 950
preplace netloc tri_3_input_and_gate_0_Y1 1 8 4 NJ 660 N 660 N 660 700
preplace netloc xup_or4_0_y 1 13 1 1100
preplace netloc tri_3_input_and_gate_0_Y2 1 8 4 NJ 680 N 680 N 680 690
preplace netloc tri_3_input_and_gate_0_Y3 1 8 4 NJ 700 N 700 N 700 680
preplace netloc xup_or4_1_y 1 12 2 940 60 NJ
preplace netloc xup_xor2_0_y 1 11 1 680
preplace netloc six_not_gate_2_Y2 1 7 1 -100
preplace netloc six_not_gate_2_Y3 1 7 1 -90
preplace netloc six_not_gate_2_Y4 1 7 1 N
preplace netloc six_not_gate_7_Y1 1 14 1 1250
preplace netloc six_not_gate_1_Y1 1 8 4 NJ 130 NJ 130 NJ 130 NJ
preplace netloc six_not_gate_8_Y1 1 14 1 1250
preplace netloc six_not_gate_7_Y2 1 14 1 1240
preplace netloc six_not_gate_6_Y1 1 2 2 NJ 1370 N
preplace netloc six_not_gate_1_Y2 1 8 4 N 170 N 170 490 380 680
preplace netloc tri_3_input_and_gate_1_Y1 1 7 2 -100 -170 N
preplace netloc six_not_gate_8_Y2 1 14 1 1250
preplace netloc xup_or5_2_y 1 6 8 -360 1190 NJ 1170 NJ 1170 NJ 1170 NJ 1170 NJ 1170 NJ 1170 NJ
preplace netloc six_not_gate_7_Y3 1 14 1 N
preplace netloc six_not_gate_6_Y2 1 2 1 -1250
preplace netloc six_not_gate_1_Y3 1 8 4 NJ 180 NJ 180 NJ 180 NJ
preplace netloc tri_3_input_and_gate_1_Y2 1 7 2 -50 -150 N
preplace netloc six_not_gate_8_Y3 1 14 1 1240
preplace netloc six_not_gate_7_Y4 1 14 1 1250
preplace netloc six_not_gate_6_Y3 1 2 2 NJ 1410 -1060
preplace netloc six_not_gate_1_Y4 1 8 4 NJ 190 NJ 190 NJ 190 NJ
preplace netloc six_not_gate_0_Y1 1 1 6 -1400 -340 N -340 N -340 N -340 N -340 -380
preplace netloc four_2_input_and_gate_2_Y1 1 8 4 NJ 400 N 400 N 400 700
preplace netloc xup_and3_2_y 1 3 3 N 1630 NJ 1630 NJ
preplace netloc six_not_gate_6_Y4 1 2 1 -1260
preplace netloc six_not_gate_0_Y2 1 1 6 N -210 N -210 N -210 N -210 N -210 -350
preplace netloc four_2_input_and_gate_2_Y2 1 8 4 NJ 420 N 420 N 420 690
preplace netloc A4_1 1 0 12 -1580 1250 -1410 1250 -1230 1250 -1040 1060 -820 1060 -590 510 -360 210 -80 300 160 240 NJ 240 NJ 240 NJ
preplace netloc six_not_gate_0_Y3 1 1 6 N -190 N -190 N -190 N -190 N -190 -320
preplace netloc four_2_input_and_gate_2_Y3 1 8 4 NJ 440 N 440 N 440 680
preplace netloc four_2_input_and_gate_0_Y1 1 7 2 N -360 180
preplace netloc six_not_gate_0_Y4 1 1 6 N -170 N -170 N -170 N -170 N -170 -300
preplace netloc four_2_input_and_gate_0_Y2 1 7 2 N -340 170
preplace netloc four_2_input_and_gate_0_Y3 1 7 2 N -320 160
preplace netloc four_2_input_and_gate_0_Y4 1 7 2 N -300 150
preplace netloc xup_xor2_2_y 1 6 1 N
levelinfo -pg 1 -1630 -1500 -1330 -1140 -930 -750 -480 -200 50 250 420 600 820 1020 1170 1500 -top -750 -bot 1700
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


