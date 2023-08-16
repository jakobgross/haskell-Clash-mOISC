# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "memory_file"

}

proc update_PARAM_VALUE.memory_file { PARAM_VALUE.memory_file } {
	# Procedure called to update memory_file when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.memory_file { PARAM_VALUE.memory_file } {
	# Procedure called to validate memory_file
	return true
}


proc update_MODELPARAM_VALUE.memory_file { MODELPARAM_VALUE.memory_file PARAM_VALUE.memory_file } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.memory_file}] ${MODELPARAM_VALUE.memory_file}
}

