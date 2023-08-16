library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package ALU_types is


  type instruction is (subleq, movleq, addleq, shlleq, shrleq, orleq, andleq, xorleq, xnorleq, pc_0, mem, memr, pcs);
  subtype clk_xilinxsystem is std_logic;

  type compareresult is (cmp_b_bigger, cmp_a_bigger, cmp_ab_equal, cmp_none);

  subtype en_xilinxsystem is boolean;
  type tup3 is record
    tup3_sel0_std_logic : std_logic;
    tup3_sel1_std_logic_vector : std_logic_vector(2 downto 0);
    tup3_sel2_signed : signed(15 downto 0);
  end record;
  type alu2fsm is record
    alu2fsm_sel0_data_res : signed(15 downto 0);
    alu2fsm_sel1_cmp : compareresult;
    alu2fsm_sel2_overflow : boolean;
  end record;
  type fsm2alu is record
    fsm2alu_sel0_mcr : instruction;
    fsm2alu_sel1_mem_a : signed(15 downto 0);
    fsm2alu_sel2_mem_b : signed(15 downto 0);
    fsm2alu_sel3_mem_mem_b : signed(15 downto 0);
    fsm2alu_sel4_pc : std_logic_vector(15 downto 0);
  end record;
  subtype rst_xilinxsystem is std_logic;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (value : in instruction) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return instruction;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (value : in compareresult) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return compareresult;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (p : tup3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup3;
  function toSLV (p : alu2fsm) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return alu2fsm;
  function toSLV (p : fsm2alu) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2alu;
end;

package body ALU_types is
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
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
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
  function toSLV (p : tup3) return std_logic_vector is
  begin
    return (toSLV(p.tup3_sel0_std_logic) & toSLV(p.tup3_sel1_std_logic_vector) & toSLV(p.tup3_sel2_signed));
  end;
  function fromSLV (slv : in std_logic_vector) return tup3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 3)),fromSLV(islv(4 to 19)));
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
  function toSLV (p : fsm2alu) return std_logic_vector is
  begin
    return (toSLV(p.fsm2alu_sel0_mcr) & toSLV(p.fsm2alu_sel1_mem_a) & toSLV(p.fsm2alu_sel2_mem_b) & toSLV(p.fsm2alu_sel3_mem_mem_b) & toSLV(p.fsm2alu_sel4_pc));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2alu is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 19)),fromSLV(islv(20 to 35)),fromSLV(islv(36 to 51)),fromSLV(islv(52 to 67)));
  end;
end;

