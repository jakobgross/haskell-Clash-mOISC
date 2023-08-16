library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package FSM_types is


  type fsmstate is (tta_memr_write_back, tta_mem_write_back, fetch_0_save_mcr, fetch_mcr, isr_update, iwr_reset, iwr_int_set, wait_for_interrupt, isr_write_back, fetch_a, tta_write_back, leq_pc_write_back, mem_write_back, memr_write_back, pcs_write_back, reset, cpu_cycle_start, fetch_b_save_a, fetch_c_save_b, fetch_d_save_c, fetch_e_save_d, fetch_f_save_e, fetch_0_save_f, bootstrap_ctrl, tta_ctrl, exec_ctrl, leq_flags_write_back, cpu_halt, iwr_int_trigger);

  type fsm2mem is record
    fsm2mem_sel0_address : std_logic_vector(15 downto 0);
    fsm2mem_sel1_data_wr : std_logic_vector(15 downto 0);
    fsm2mem_sel2_wren : boolean;
    fsm2mem_sel3_rden : boolean;
  end record;
  type instruction is (subleq, movleq, addleq, shlleq, shrleq, orleq, andleq, xorleq, xnorleq, pc, mem, memr, pcs);
  subtype clk_xilinxsystem is std_logic;

  type compareresult is (cmp_b_bigger, cmp_a_bigger, cmp_ab_equal, cmp_none);

  type ioctr2fsm is record
    ioctr2fsm_sel0_isr : std_logic_vector(7 downto 0);
    ioctr2fsm_sel1_interrupt : boolean;
    ioctr2fsm_sel2_cpu_stop : boolean;
  end record;
  type fsm2ioctr is record
    fsm2ioctr_sel0_iwr : std_logic_vector(7 downto 0);
    fsm2ioctr_sel1_icr : std_logic_vector(7 downto 0);
    fsm2ioctr_sel2_interrupt_block : boolean;
  end record;
  type fsm2iobuf is record
    fsm2iobuf_sel0_dataout : std_logic_vector(7 downto 0);
    fsm2iobuf_sel1_oe : std_logic_vector(7 downto 0);
  end record;
  type alu2fsm is record
    alu2fsm_sel0_data_res : signed(15 downto 0);
    alu2fsm_sel1_cmp : compareresult;
    alu2fsm_sel2_overflow : boolean;
  end record;
  type fsminput is record
    fsminput_sel0_meminput : std_logic_vector(15 downto 0);
    fsminput_sel1_ioctrinput : ioctr2fsm;
    fsminput_sel2_aluinput : alu2fsm;
    fsminput_sel3_iobufinput : std_logic_vector(7 downto 0);
  end record;
  type fsmregisters is record
    fsmregisters_sel0_pci : std_logic_vector(15 downto 0);
    fsmregisters_sel1_pci_new : std_logic_vector(15 downto 0);
    fsmregisters_sel2_pcinewp : std_logic_vector(15 downto 0);
    fsmregisters_sel3_ai : std_logic_vector(15 downto 0);
    fsmregisters_sel4_bi : std_logic_vector(15 downto 0);
    fsmregisters_sel5_ci : std_logic_vector(15 downto 0);
    fsmregisters_sel6_di : std_logic_vector(15 downto 0);
    fsmregisters_sel7_ei : std_logic_vector(15 downto 0);
    fsmregisters_sel8_fi : std_logic_vector(15 downto 0);
    fsmregisters_sel9_mcri : instruction;
    fsmregisters_sel10_chri : std_logic_vector(7 downto 0);
    fsmregisters_sel11_iwri : std_logic_vector(7 downto 0);
    fsmregisters_sel12_icri : std_logic_vector(7 downto 0);
    fsmregisters_sel13_csri : std_logic_vector(7 downto 0);
    fsmregisters_sel14_isri : std_logic_vector(7 downto 0);
    fsmregisters_sel15_idri : std_logic_vector(7 downto 0);
    fsmregisters_sel16_iori : std_logic_vector(7 downto 0);
    fsmregisters_sel17_isri_new : std_logic_vector(7 downto 0);
    fsmregisters_sel18_alu_data_i : signed(15 downto 0);
    fsmregisters_sel19_f_mode_offset : unsigned(15 downto 0);
    fsmregisters_sel20_f_mode : boolean;
  end record;
  type tup17 is record
    tup17_sel0_std_logic_vector_0 : std_logic_vector(15 downto 0);
    tup17_sel1_std_logic_vector_1 : std_logic_vector(15 downto 0);
    tup17_sel2_std_logic_0 : std_logic;
    tup17_sel3_std_logic_1 : std_logic;
    tup17_sel4_std_logic_vector_2 : std_logic_vector(7 downto 0);
    tup17_sel5_std_logic_vector_3 : std_logic_vector(7 downto 0);
    tup17_sel6_std_logic_2 : std_logic;
    tup17_sel7_std_logic_vector_4 : std_logic_vector(7 downto 0);
    tup17_sel8_signed_0 : signed(15 downto 0);
    tup17_sel9_signed_1 : signed(15 downto 0);
    tup17_sel10_signed_2 : signed(15 downto 0);
    tup17_sel11_std_logic_vector_5 : std_logic_vector(15 downto 0);
    tup17_sel12_std_logic_vector_6 : std_logic_vector(7 downto 0);
    tup17_sel13_std_logic_vector_7 : std_logic_vector(7 downto 0);
    tup17_sel14_std_logic_vector_8 : std_logic_vector(7 downto 0);
    tup17_sel15_std_logic_vector_9 : std_logic_vector(7 downto 0);
    tup17_sel16_std_logic_3 : std_logic;
  end record;
  type fsm2alu is record
    fsm2alu_sel0_mcr : instruction;
    fsm2alu_sel1_mem_a : signed(15 downto 0);
    fsm2alu_sel2_mem_b : signed(15 downto 0);
    fsm2alu_sel3_mem_mem_b : signed(15 downto 0);
    fsm2alu_sel4_pc_0 : std_logic_vector(15 downto 0);
  end record;
  type tup3_0 is record
    tup3_0_sel0_fsmstate : fsmstate;
    tup3_0_sel1_fsmregisters : fsmregisters;
    tup3_0_sel2_fsm2alu : fsm2alu;
  end record;
  type fsm2computerstatus is record
    fsm2computerstatus_sel0_status : std_logic_vector(7 downto 0);
    fsm2computerstatus_sel1_cpu_stop_status : boolean;
  end record;
  type fsmoutput is record
    fsmoutput_sel0_memoutput : fsm2mem;
    fsmoutput_sel1_ioctroutput : fsm2ioctr;
    fsmoutput_sel2_aluoutput : fsm2alu;
    fsmoutput_sel3_iobufoutput : fsm2iobuf;
    fsmoutput_sel4_clockspeedoutput : std_logic_vector(7 downto 0);
    fsmoutput_sel5_computerstatusoutput : fsm2computerstatus;
  end record;
  type fsminternalstate is record
    fsminternalstate_sel0_cyclestate : fsmstate;
    fsminternalstate_sel1_internalregisters_2 : fsmregisters;
    fsminternalstate_sel2_outputregisters : fsmoutput;
  end record;
  type tup3 is record
    tup3_sel0_fsminternalstate : fsminternalstate;
    tup3_sel1_fsmoutput : fsmoutput;
    tup3_sel2_boolean : boolean;
  end record;
  type tup2 is record
    tup2_sel0_fsminternalstate : fsminternalstate;
    tup2_sel1_fsmoutput : fsmoutput;
  end record;
  subtype rst_xilinxsystem is std_logic;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (u : in unsigned) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return unsigned;
  function toSLV (value : in fsmstate) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsmstate;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (p : fsm2mem) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2mem;
  function toSLV (value : in instruction) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return instruction;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (value : in compareresult) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return compareresult;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (p : ioctr2fsm) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return ioctr2fsm;
  function toSLV (p : fsm2ioctr) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2ioctr;
  function toSLV (p : fsm2iobuf) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2iobuf;
  function toSLV (p : alu2fsm) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return alu2fsm;
  function toSLV (p : fsminput) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsminput;
  function toSLV (p : fsmregisters) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsmregisters;
  function toSLV (p : tup17) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup17;
  function toSLV (p : fsm2alu) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2alu;
  function toSLV (p : tup3_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup3_0;
  function toSLV (p : fsm2computerstatus) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2computerstatus;
  function toSLV (p : fsmoutput) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsmoutput;
  function toSLV (p : fsminternalstate) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsminternalstate;
  function toSLV (p : tup3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup3;
  function toSLV (p : tup2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup2;
end;

package body FSM_types is
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function tagToEnum (s : in signed) return boolean is
  begin
    if s = to_signed(0,64) then
      return false;
    else
      return true;
    end if;
  end;
  function dataToTag (b : in boolean) return signed is
  begin
    if b then
      return to_signed(1,64);
    else
      return to_signed(0,64);
    end if;
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function fromSLV (slv : in std_logic_vector) return unsigned is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return unsigned(islv);
  end;
  function toSLV (value : in fsmstate) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(fsmstate'pos(value), 5));
  end;
  function fromSLV (slv : in std_logic_vector) return fsmstate is
  begin
    return fsmstate'val(to_integer(unsigned(slv)));
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (p : fsm2mem) return std_logic_vector is
  begin
    return (toSLV(p.fsm2mem_sel0_address) & toSLV(p.fsm2mem_sel1_data_wr) & toSLV(p.fsm2mem_sel2_wren) & toSLV(p.fsm2mem_sel3_rden));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2mem is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 31)),fromSLV(islv(32 to 32)),fromSLV(islv(33 to 33)));
  end;
  function toSLV (value : in instruction) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(instruction'pos(value), 4));
  end;
  function fromSLV (slv : in std_logic_vector) return instruction is
  begin
    return instruction'val(to_integer(unsigned(slv)));
  end;
  function toSLV (sl : in std_logic) return std_logic_vector is
  begin
    return std_logic_vector'(0 => sl);
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic is
    alias islv : std_logic_vector (0 to slv'length - 1) is slv;
  begin
    return islv(0);
  end;
  function toSLV (value : in compareresult) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(compareresult'pos(value), 2));
  end;
  function fromSLV (slv : in std_logic_vector) return compareresult is
  begin
    return compareresult'val(to_integer(unsigned(slv)));
  end;
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function fromSLV (slv : in std_logic_vector) return signed is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return signed(islv);
  end;
  function toSLV (p : ioctr2fsm) return std_logic_vector is
  begin
    return (toSLV(p.ioctr2fsm_sel0_isr) & toSLV(p.ioctr2fsm_sel1_interrupt) & toSLV(p.ioctr2fsm_sel2_cpu_stop));
  end;
  function fromSLV (slv : in std_logic_vector) return ioctr2fsm is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)),fromSLV(islv(9 to 9)));
  end;
  function toSLV (p : fsm2ioctr) return std_logic_vector is
  begin
    return (toSLV(p.fsm2ioctr_sel0_iwr) & toSLV(p.fsm2ioctr_sel1_icr) & toSLV(p.fsm2ioctr_sel2_interrupt_block));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2ioctr is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)),fromSLV(islv(16 to 16)));
  end;
  function toSLV (p : fsm2iobuf) return std_logic_vector is
  begin
    return (toSLV(p.fsm2iobuf_sel0_dataout) & toSLV(p.fsm2iobuf_sel1_oe));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2iobuf is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)));
  end;
  function toSLV (p : alu2fsm) return std_logic_vector is
  begin
    return (toSLV(p.alu2fsm_sel0_data_res) & toSLV(p.alu2fsm_sel1_cmp) & toSLV(p.alu2fsm_sel2_overflow));
  end;
  function fromSLV (slv : in std_logic_vector) return alu2fsm is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 17)),fromSLV(islv(18 to 18)));
  end;
  function toSLV (p : fsminput) return std_logic_vector is
  begin
    return (toSLV(p.fsminput_sel0_meminput) & toSLV(p.fsminput_sel1_ioctrinput) & toSLV(p.fsminput_sel2_aluinput) & toSLV(p.fsminput_sel3_iobufinput));
  end;
  function fromSLV (slv : in std_logic_vector) return fsminput is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 25)),fromSLV(islv(26 to 44)),fromSLV(islv(45 to 52)));
  end;
  function toSLV (p : fsmregisters) return std_logic_vector is
  begin
    return (toSLV(p.fsmregisters_sel0_pci) & toSLV(p.fsmregisters_sel1_pci_new) & toSLV(p.fsmregisters_sel2_pcinewp) & toSLV(p.fsmregisters_sel3_ai) & toSLV(p.fsmregisters_sel4_bi) & toSLV(p.fsmregisters_sel5_ci) & toSLV(p.fsmregisters_sel6_di) & toSLV(p.fsmregisters_sel7_ei) & toSLV(p.fsmregisters_sel8_fi) & toSLV(p.fsmregisters_sel9_mcri) & toSLV(p.fsmregisters_sel10_chri) & toSLV(p.fsmregisters_sel11_iwri) & toSLV(p.fsmregisters_sel12_icri) & toSLV(p.fsmregisters_sel13_csri) & toSLV(p.fsmregisters_sel14_isri) & toSLV(p.fsmregisters_sel15_idri) & toSLV(p.fsmregisters_sel16_iori) & toSLV(p.fsmregisters_sel17_isri_new) & toSLV(p.fsmregisters_sel18_alu_data_i) & toSLV(p.fsmregisters_sel19_f_mode_offset) & toSLV(p.fsmregisters_sel20_f_mode));
  end;
  function fromSLV (slv : in std_logic_vector) return fsmregisters is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 31)),fromSLV(islv(32 to 47)),fromSLV(islv(48 to 63)),fromSLV(islv(64 to 79)),fromSLV(islv(80 to 95)),fromSLV(islv(96 to 111)),fromSLV(islv(112 to 127)),fromSLV(islv(128 to 143)),fromSLV(islv(144 to 147)),fromSLV(islv(148 to 155)),fromSLV(islv(156 to 163)),fromSLV(islv(164 to 171)),fromSLV(islv(172 to 179)),fromSLV(islv(180 to 187)),fromSLV(islv(188 to 195)),fromSLV(islv(196 to 203)),fromSLV(islv(204 to 211)),fromSLV(islv(212 to 227)),fromSLV(islv(228 to 243)),fromSLV(islv(244 to 244)));
  end;
  function toSLV (p : tup17) return std_logic_vector is
  begin
    return (toSLV(p.tup17_sel0_std_logic_vector_0) & toSLV(p.tup17_sel1_std_logic_vector_1) & toSLV(p.tup17_sel2_std_logic_0) & toSLV(p.tup17_sel3_std_logic_1) & toSLV(p.tup17_sel4_std_logic_vector_2) & toSLV(p.tup17_sel5_std_logic_vector_3) & toSLV(p.tup17_sel6_std_logic_2) & toSLV(p.tup17_sel7_std_logic_vector_4) & toSLV(p.tup17_sel8_signed_0) & toSLV(p.tup17_sel9_signed_1) & toSLV(p.tup17_sel10_signed_2) & toSLV(p.tup17_sel11_std_logic_vector_5) & toSLV(p.tup17_sel12_std_logic_vector_6) & toSLV(p.tup17_sel13_std_logic_vector_7) & toSLV(p.tup17_sel14_std_logic_vector_8) & toSLV(p.tup17_sel15_std_logic_vector_9) & toSLV(p.tup17_sel16_std_logic_3));
  end;
  function fromSLV (slv : in std_logic_vector) return tup17 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 31)),fromSLV(islv(32 to 32)),fromSLV(islv(33 to 33)),fromSLV(islv(34 to 41)),fromSLV(islv(42 to 49)),fromSLV(islv(50 to 50)),fromSLV(islv(51 to 58)),fromSLV(islv(59 to 74)),fromSLV(islv(75 to 90)),fromSLV(islv(91 to 106)),fromSLV(islv(107 to 122)),fromSLV(islv(123 to 130)),fromSLV(islv(131 to 138)),fromSLV(islv(139 to 146)),fromSLV(islv(147 to 154)),fromSLV(islv(155 to 155)));
  end;
  function toSLV (p : fsm2alu) return std_logic_vector is
  begin
    return (toSLV(p.fsm2alu_sel0_mcr) & toSLV(p.fsm2alu_sel1_mem_a) & toSLV(p.fsm2alu_sel2_mem_b) & toSLV(p.fsm2alu_sel3_mem_mem_b) & toSLV(p.fsm2alu_sel4_pc_0));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2alu is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 19)),fromSLV(islv(20 to 35)),fromSLV(islv(36 to 51)),fromSLV(islv(52 to 67)));
  end;
  function toSLV (p : tup3_0) return std_logic_vector is
  begin
    return (toSLV(p.tup3_0_sel0_fsmstate) & toSLV(p.tup3_0_sel1_fsmregisters) & toSLV(p.tup3_0_sel2_fsm2alu));
  end;
  function fromSLV (slv : in std_logic_vector) return tup3_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 4)),fromSLV(islv(5 to 249)),fromSLV(islv(250 to 317)));
  end;
  function toSLV (p : fsm2computerstatus) return std_logic_vector is
  begin
    return (toSLV(p.fsm2computerstatus_sel0_status) & toSLV(p.fsm2computerstatus_sel1_cpu_stop_status));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2computerstatus is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)));
  end;
  function toSLV (p : fsmoutput) return std_logic_vector is
  begin
    return (toSLV(p.fsmoutput_sel0_memoutput) & toSLV(p.fsmoutput_sel1_ioctroutput) & toSLV(p.fsmoutput_sel2_aluoutput) & toSLV(p.fsmoutput_sel3_iobufoutput) & toSLV(p.fsmoutput_sel4_clockspeedoutput) & toSLV(p.fsmoutput_sel5_computerstatusoutput));
  end;
  function fromSLV (slv : in std_logic_vector) return fsmoutput is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 33)),fromSLV(islv(34 to 50)),fromSLV(islv(51 to 118)),fromSLV(islv(119 to 134)),fromSLV(islv(135 to 142)),fromSLV(islv(143 to 151)));
  end;
  function toSLV (p : fsminternalstate) return std_logic_vector is
  begin
    return (toSLV(p.fsminternalstate_sel0_cyclestate) & toSLV(p.fsminternalstate_sel1_internalregisters_2) & toSLV(p.fsminternalstate_sel2_outputregisters));
  end;
  function fromSLV (slv : in std_logic_vector) return fsminternalstate is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 4)),fromSLV(islv(5 to 249)),fromSLV(islv(250 to 401)));
  end;
  function toSLV (p : tup3) return std_logic_vector is
  begin
    return (toSLV(p.tup3_sel0_fsminternalstate) & toSLV(p.tup3_sel1_fsmoutput) & toSLV(p.tup3_sel2_boolean));
  end;
  function fromSLV (slv : in std_logic_vector) return tup3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 401)),fromSLV(islv(402 to 553)),fromSLV(islv(554 to 554)));
  end;
  function toSLV (p : tup2) return std_logic_vector is
  begin
    return (toSLV(p.tup2_sel0_fsminternalstate) & toSLV(p.tup2_sel1_fsmoutput));
  end;
  function fromSLV (slv : in std_logic_vector) return tup2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 401)),fromSLV(islv(402 to 553)));
  end;
end;

