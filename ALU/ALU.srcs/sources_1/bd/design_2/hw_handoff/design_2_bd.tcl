
################################################################
# This is a generated script based on design: design_2
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
# source design_2_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a35tcpg236-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name design_2

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
  set A_1 [ create_bd_port -dir I A_1 ]
  set A_2 [ create_bd_port -dir I A_2 ]
  set A_3 [ create_bd_port -dir I A_3 ]
  set B [ create_bd_port -dir I B ]
  set B_1 [ create_bd_port -dir I B_1 ]
  set B_2 [ create_bd_port -dir I B_2 ]
  set B_3 [ create_bd_port -dir I B_3 ]
  set Cn [ create_bd_port -dir I Cn ]
  set Cout [ create_bd_port -dir O Cout ]
  set M0 [ create_bd_port -dir I M0 ]
  set M1 [ create_bd_port -dir I M1 ]
  set M2 [ create_bd_port -dir I M2 ]
  set Y0 [ create_bd_port -dir O Y0 ]
  set Y1 [ create_bd_port -dir O Y1 ]
  set Y2 [ create_bd_port -dir O Y2 ]
  set Y3 [ create_bd_port -dir O Y3 ]

  # Create instance: design_1_4, and set properties
  set design_1_4 [ create_bd_cell -type ip -vlnv sysu:user:design_1:1.0 design_1_4 ]

  # Create instance: design_1_5, and set properties
  set design_1_5 [ create_bd_cell -type ip -vlnv sysu:user:design_1:1.0 design_1_5 ]

  # Create instance: design_1_6, and set properties
  set design_1_6 [ create_bd_cell -type ip -vlnv sysu:user:design_1:1.0 design_1_6 ]

  # Create instance: design_1_7, and set properties
  set design_1_7 [ create_bd_cell -type ip -vlnv sysu:user:design_1:1.0 design_1_7 ]

  # Create port connections
  connect_bd_net -net A_1_1 [get_bd_ports A_1] [get_bd_pins design_1_7/A]
  connect_bd_net -net A_2_1 [get_bd_ports A_2] [get_bd_pins design_1_6/A]
  connect_bd_net -net A_3_1 [get_bd_ports A_3] [get_bd_pins design_1_5/A]
  connect_bd_net -net A_4 [get_bd_ports A] [get_bd_pins design_1_4/A]
  connect_bd_net -net B_1_1 [get_bd_ports B_1] [get_bd_pins design_1_7/B]
  connect_bd_net -net B_2_1 [get_bd_ports B_2] [get_bd_pins design_1_6/B]
  connect_bd_net -net B_3_1 [get_bd_ports B_3] [get_bd_pins design_1_5/B]
  connect_bd_net -net B_4 [get_bd_ports B] [get_bd_pins design_1_4/B]
  connect_bd_net -net Cn_1 [get_bd_ports Cn] [get_bd_pins design_1_4/Cn]
  connect_bd_net -net M0_1 [get_bd_ports M0] [get_bd_pins design_1_4/M0] [get_bd_pins design_1_5/M0] [get_bd_pins design_1_6/M0] [get_bd_pins design_1_7/M0]
  connect_bd_net -net M1_1 [get_bd_ports M1] [get_bd_pins design_1_4/M1] [get_bd_pins design_1_5/M1] [get_bd_pins design_1_6/M1] [get_bd_pins design_1_7/M1]
  connect_bd_net -net M2_1 [get_bd_ports M2] [get_bd_pins design_1_4/M2] [get_bd_pins design_1_5/M2] [get_bd_pins design_1_6/M2] [get_bd_pins design_1_7/M2]
  connect_bd_net -net design_1_4_Y1 [get_bd_ports Y0] [get_bd_pins design_1_4/Y1]
  connect_bd_net -net design_1_4_Y2 [get_bd_pins design_1_4/Y2] [get_bd_pins design_1_7/Cn]
  connect_bd_net -net design_1_5_Y1 [get_bd_ports Y3] [get_bd_pins design_1_5/Y1]
  connect_bd_net -net design_1_5_Y2 [get_bd_ports Cout] [get_bd_pins design_1_5/Y2]
  connect_bd_net -net design_1_6_Y1 [get_bd_ports Y2] [get_bd_pins design_1_6/Y1]
  connect_bd_net -net design_1_6_Y2 [get_bd_pins design_1_5/Cn] [get_bd_pins design_1_6/Y2]
  connect_bd_net -net design_1_7_Y1 [get_bd_ports Y1] [get_bd_pins design_1_7/Y1]
  connect_bd_net -net design_1_7_Y2 [get_bd_pins design_1_6/Cn] [get_bd_pins design_1_7/Y2]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port Cout -pg 1 -y 110 -defaultsOSRD
preplace port A_1 -pg 1 -y 20 -defaultsOSRD
preplace port A -pg 1 -y 0 -defaultsOSRD
preplace port A_2 -pg 1 -y -80 -defaultsOSRD
preplace port B -pg 1 -y -40 -defaultsOSRD
preplace port Cn -pg 1 -y -20 -defaultsOSRD
preplace port A_3 -pg 1 -y 50 -defaultsOSRD
preplace port M0 -pg 1 -y 100 -defaultsOSRD
preplace port Y0 -pg 1 -y -10 -defaultsOSRD
preplace port M1 -pg 1 -y 120 -defaultsOSRD
preplace port Y1 -pg 1 -y -60 -defaultsOSRD
preplace port B_1 -pg 1 -y 160 -defaultsOSRD
preplace port M2 -pg 1 -y 140 -defaultsOSRD
preplace port Y2 -pg 1 -y 10 -defaultsOSRD
preplace port B_2 -pg 1 -y -60 -defaultsOSRD
preplace port B_3 -pg 1 -y 70 -defaultsOSRD
preplace port Y3 -pg 1 -y 90 -defaultsOSRD
preplace inst design_1_4 -pg 1 -lvl 1 -y 80 -defaultsOSRD
preplace inst design_1_5 -pg 1 -lvl 4 -y 80 -defaultsOSRD
preplace inst design_1_6 -pg 1 -lvl 3 -y 90 -defaultsOSRD
preplace inst design_1_7 -pg 1 -lvl 2 -y 80 -defaultsOSRD
preplace netloc design_1_5_Y2 1 4 1 800
preplace netloc M2_1 1 0 4 40 -20 180 -20 NJ -20 600
preplace netloc design_1_6_Y1 1 3 2 630 -20 NJ
preplace netloc design_1_4_Y1 1 1 4 200 -40 NJ -40 NJ -40 NJ
preplace netloc design_1_6_Y2 1 3 1 650
preplace netloc A_4 1 0 1 -20
preplace netloc design_1_4_Y2 1 1 1 210
preplace netloc B_3_1 1 0 4 NJ -80 NJ -80 NJ -80 640
preplace netloc A_2_1 1 0 3 NJ -110 NJ -110 440
preplace netloc M0_1 1 0 4 30 -30 NJ -30 NJ -10 610
preplace netloc B_2_1 1 0 3 NJ -90 NJ -90 430
preplace netloc design_1_7_Y1 1 2 3 410 -60 NJ -60 NJ
preplace netloc A_1_1 1 0 2 NJ -40 190
preplace netloc Cn_1 1 0 1 -30
preplace netloc design_1_7_Y2 1 2 1 440
preplace netloc A_3_1 1 0 4 NJ -100 NJ -100 NJ -100 650
preplace netloc B_1_1 1 0 2 NJ -70 210
preplace netloc M1_1 1 0 4 10 -60 230 -60 NJ -30 620
preplace netloc design_1_5_Y1 1 4 1 810
preplace netloc B_4 1 0 1 -10
levelinfo -pg 1 -90 110 320 530 730 830 -top -120 -bot 460
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


