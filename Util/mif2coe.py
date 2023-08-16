# -*- coding: utf-8 -*-
from fileinput import close
import sys
from typing import Dict
def print_help():
    print("Usage: mif2coe.py <mif_file> <coe_file> [<mem_standard_value>]")
    print("\t<mif_file> is the input mif file")
    print("\t<coe_file> is the output coe file")
    print("\t<mem_standard_value> = 0 is the standard value for uninitialized memory")

def get_value_from_line(line: str) -> str:
    return line.replace(";","").split('=')[1].strip()

def starts_ignore_case(line : str, start_string:str) -> str:
    return line.lower().startswith(start_string.lower())

decode_radix ={
    "HEX":16,
    "BIN":2,
    "OCT":8,
    "DEC":10
}

if len(sys.argv) < 2 or len(sys.argv) > 4:
    print_help()
input_file_name = sys.argv[1]
output_file_name = sys.argv[2]
memory_standard_value = 0
if len(sys.argv) == 4:
    memory_standard_value = int(sys.argv[3])

f = open(input_file_name, 'r')

parameters : Dict[str,int] = {}
content: Dict[int ,int] = {}

print(f"converting {input_file_name} to {output_file_name}")
if not output_file_name.lower().endswith(".coe"):
    print("output file must be a .coe file")
    exit(1)
if not (input_file_name.lower().endswith(".mif") or input_file_name.lower().endswith(".hex")):
    print("input file must be a .mif or .hex file")
    exit(1)



content_mode = False
expect_begin = False
max_addr = 0
print("reading and parsing input file")
for line in f.readlines():
    
    if not content_mode:
        if starts_ignore_case(line,'DEPTH'):
            value = get_value_from_line(line)
            parameters['DEPTH'] = int(value)
        elif starts_ignore_case(line,'WIDTH'):
            value = get_value_from_line(line)
            parameters['WIDTH'] = int(value)
        elif starts_ignore_case(line,'ADDRESS_RADIX'):
            value = get_value_from_line(line)
            parameters['ADDRESS_RADIX'] = decode_radix[value]
        elif starts_ignore_case(line,'DATA_RADIX'):
            value = get_value_from_line(line)
            parameters['DATA_RADIX'] = decode_radix[value]
        elif starts_ignore_case(line,'CONTENT'):
            except_begin = True
            if "ADDRESS_RADIX" not in parameters:
                print("ADDRESS_RADIX not found")
                exit(1)
            if "DATA_RADIX" not in parameters:
                print("DATA_RADIX not found")
                exit(1)
        elif starts_ignore_case(line,'BEGIN'):
            expect_begin = False
            content_mode = True
        else:
            raise Exception("Unexpected line: " + line)
    else:
        if starts_ignore_case(line,'END'):
            expect_end = False
            expect_begin = False
            content_mode = False
        else:
            split_value_pair = [i.strip() for i in line.replace(";","").split(':')]
            split_value_pair = (int(split_value_pair[0],parameters['ADDRESS_RADIX']),
                                int(split_value_pair[1],parameters['DATA_RADIX']))
            if len(split_value_pair) != 2:
                raise Exception("Unexpected line: " + line)
            if split_value_pair[0] > max_addr:
                max_addr = split_value_pair[0]
            content[split_value_pair[0]] = split_value_pair[1]
            
precision_hex = parameters["WIDTH"]//4
precision_bin = parameters["WIDTH"]
intendation = " "*4
print("Input file parsed")
print("Parameters:")
for key in parameters:
    print(f"{key}: {parameters[key]}")
print(f"Max address: {max_addr} (0x{max_addr:x})")
print (f"Precision: {precision_hex}")
print(f"Intendation: {len(intendation)}")

print("\n Converting...")
o = open(output_file_name, 'w')
o.write(";This file was generated with mif2coe.py copyright Jakob Gross\n")
o.write("memory_initialization_radix = 16 ;\n")
o.write("memory_initialization_vector =\n")
o2 = open(output_file_name+".mem", 'w')
o3 = open(output_file_name[:-3]+"clash.bin", 'w')
for i in range(0,max_addr-1):
    if i in content:
        o.write(f"{intendation}{content[i]:0{precision_hex}x},\n")
        o2.write(f"{content[i]:0{precision_hex}x}\n")
        o3.write(f"{content[i]:0{precision_bin}b}\n")
    else:
        o.write(f"{intendation}{memory_standard_value:0{precision_hex}x},\n")
        o2.write(f"{memory_standard_value:0{precision_hex}x}\n")
        o3.write(f"{memory_standard_value:0{precision_bin}b}\n")
if max_addr in content:
    o.write(f"{intendation}{content[max_addr]:0{precision_hex}x};\n")
    o2.write(f"{content[max_addr]:0{precision_hex}x}")
    o3.write(f"{content[max_addr]:0{precision_bin}b}")
else:
    o.write(f"{intendation}{memory_standard_value:0{precision_hex}x};\n")
    o2.write(f"{memory_standard_value:0{precision_hex}x}")
    o3.write(f"{memory_standard_value:0{precision_bin}b}")

o.close()
o2.close()
o3.close()