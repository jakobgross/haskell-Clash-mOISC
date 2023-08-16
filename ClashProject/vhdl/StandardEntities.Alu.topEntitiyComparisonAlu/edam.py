import os

edam_root = os.path.dirname(os.path.realpath(__file__))
work_root = 'build'

# TODO Specify the EDA tool to use
tool = ''

edam = {
    'name': 'ALU',
    'toplevel': 'ALU',
    'files': [
        {
            'name': os.path.join(edam_root, 'ALU.sdc'),
            'file_type': 'SDC',
            'logical_name': 'ALU'
        },
        {
            'name': os.path.join(edam_root, 'ALU_types.vhdl'),
            'file_type': 'vhdlSource',
            'logical_name': 'ALU'
        },
        {
            'name': os.path.join(edam_root, 'standardentities_alu_topentitiycomparisonalu_alu.vhdl'),
            'file_type': 'vhdlSource',
            'logical_name': 'ALU'
        },
        {
            'name': os.path.join(edam_root, 'ALU.vhdl'),
            'file_type': 'vhdlSource',
            'logical_name': 'ALU'
        }
    ],
    'tool_options': {
        'ghdl': {
            # Command line arguments for analysis
            'analyze_options': '',
            # Command line arguments for simulation
            'run_options': ''
        },
        'icarus': {
            # Command line options for iverilog
            'iverilog_options': '',
            # Default timescale for simulation
            'timescale': '100fs/100fs'
        },
        'modelsim': {
            # Command line arguments for vlog
            'vlog_options': '',
            # Command line arguments for vsim
            'vsim_options': ''
        },
        # TODO Specify options if using Quartus
        'quartus': {
            # Specify the FPGA's device number in the JTAG chain
            'board_device_index': '1',
            # FPGA family, e.g. Cyclone IV E
            'family': '',
            # Device identifier, e.g. EP4CE55F23C8
            'device': '',
            # Command line arguments for Quartus
            'quartus_options': '',
            # Command line arguments for Design Space Explorer
            'dse_options': ''
        },
        # TODO Specify options if using Vivado
        'vivado': {
            # Specify target part by ID, e.g. xc7z020-1clg400c
            'part': ''
        }
    }
}

if __name__ == '__main__':
    from edalize import *

    tool = get_edatool(tool)(edam=edam, work_root=work_root)
    os.makedirs(work_root)
    tool.configure()
    tool.build()

