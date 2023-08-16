library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package IoCtr_types is

  subtype clk_xilinxsystem is std_logic;

  subtype en_xilinxsystem is boolean;

  type fsm2ioctr is record
    fsm2ioctr_sel0_iwr : std_logic_vector(7 downto 0);
    fsm2ioctr_sel1_icr : std_logic_vector(7 downto 0);
    fsm2ioctr_sel2_interrupt_block_0 : boolean;
  end record;
  type tup3_0 is record
    tup3_0_sel0_std_logic_vector : std_logic_vector(7 downto 0);
    tup3_0_sel1_std_logic_0 : std_logic;
    tup3_0_sel2_std_logic_1 : std_logic;
  end record;
  type ioctr2fsm is record
    ioctr2fsm_sel0_isr : std_logic_vector(7 downto 0);
    ioctr2fsm_sel1_interrupt : boolean;
    ioctr2fsm_sel2_cpu_stop : boolean;
  end record;
  type ioctrlregisters is record
    ioctrlregisters_sel0_isr_t : std_logic_vector(7 downto 0);
    ioctrlregisters_sel1_detect : std_logic_vector(7 downto 0);
    ioctrlregisters_sel2_detect_prev : std_logic_vector(7 downto 0);
    ioctrlregisters_sel3_edge : boolean;
  end record;
  type ioctrstate is (reset_ioctr, wait_for_iwr, edge_detect, edge_detect_dir, edge_decide, leave, resync);
  type tup3 is record
    tup3_sel0_ioctrstate : ioctrstate;
    tup3_sel1_ioctrlregisters : ioctrlregisters;
    tup3_sel2_ioctr2fsm : ioctr2fsm;
  end record;
  type tup2 is record
    tup2_sel0_tup3 : tup3;
    tup2_sel1_ioctr2fsm : ioctr2fsm;
  end record;
  subtype rst_xilinxsystem is std_logic;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (p : fsm2ioctr) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return fsm2ioctr;
  function toSLV (p : tup3_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup3_0;
  function toSLV (p : ioctr2fsm) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return ioctr2fsm;
  function toSLV (p : ioctrlregisters) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return ioctrlregisters;
  function toSLV (value : in ioctrstate) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return ioctrstate;
  function toSLV (p : tup3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup3;
  function toSLV (p : tup2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return tup2;
end;

package body IoCtr_types is
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
  function toSLV (sl : in std_logic) return std_logic_vector is
  begin
    return std_logic_vector'(0 => sl);
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic is
    alias islv : std_logic_vector (0 to slv'length - 1) is slv;
  begin
    return islv(0);
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (p : fsm2ioctr) return std_logic_vector is
  begin
    return (toSLV(p.fsm2ioctr_sel0_iwr) & toSLV(p.fsm2ioctr_sel1_icr) & toSLV(p.fsm2ioctr_sel2_interrupt_block_0));
  end;
  function fromSLV (slv : in std_logic_vector) return fsm2ioctr is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)),fromSLV(islv(16 to 16)));
  end;
  function toSLV (p : tup3_0) return std_logic_vector is
  begin
    return (toSLV(p.tup3_0_sel0_std_logic_vector) & toSLV(p.tup3_0_sel1_std_logic_0) & toSLV(p.tup3_0_sel2_std_logic_1));
  end;
  function fromSLV (slv : in std_logic_vector) return tup3_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)),fromSLV(islv(9 to 9)));
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
  function toSLV (p : ioctrlregisters) return std_logic_vector is
  begin
    return (toSLV(p.ioctrlregisters_sel0_isr_t) & toSLV(p.ioctrlregisters_sel1_detect) & toSLV(p.ioctrlregisters_sel2_detect_prev) & toSLV(p.ioctrlregisters_sel3_edge));
  end;
  function fromSLV (slv : in std_logic_vector) return ioctrlregisters is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)),fromSLV(islv(16 to 23)),fromSLV(islv(24 to 24)));
  end;
  function toSLV (value : in ioctrstate) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(ioctrstate'pos(value), 3));
  end;
  function fromSLV (slv : in std_logic_vector) return ioctrstate is
  begin
    return ioctrstate'val(to_integer(unsigned(slv)));
  end;
  function toSLV (p : tup3) return std_logic_vector is
  begin
    return (toSLV(p.tup3_sel0_ioctrstate) & toSLV(p.tup3_sel1_ioctrlregisters) & toSLV(p.tup3_sel2_ioctr2fsm));
  end;
  function fromSLV (slv : in std_logic_vector) return tup3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 27)),fromSLV(islv(28 to 37)));
  end;
  function toSLV (p : tup2) return std_logic_vector is
  begin
    return (toSLV(p.tup2_sel0_tup3) & toSLV(p.tup2_sel1_ioctr2fsm));
  end;
  function fromSLV (slv : in std_logic_vector) return tup2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 37)),fromSLV(islv(38 to 47)));
  end;
end;

