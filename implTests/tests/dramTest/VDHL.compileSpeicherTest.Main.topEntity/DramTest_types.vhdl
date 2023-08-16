library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package DramTest_types is

  subtype en_Dom is boolean;
  subtype clk_Dom is std_logic;

  type State is (Waiting, ReadRequest);
  subtype rst_Dom is std_logic;

  type Tup2_0 is record
    Tup2_0_sel0_unsigned_0 : unsigned(7 downto 0);
    Tup2_0_sel1_unsigned_1 : unsigned(7 downto 0);
  end record;
  type Tup3 is record
    Tup3_sel0_State : State;
    Tup3_sel1_unsigned_0 : unsigned(31 downto 0);
    Tup3_sel2_unsigned_1 : unsigned(7 downto 0);
  end record;
  type Tup2 is record
    Tup2_sel0_Tup3 : Tup3;
    Tup2_sel1_Tup2_0 : Tup2_0;
  end record;

  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (value : in State) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return State;
  function toSLV (u : in unsigned) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return unsigned;
  function toSLV (p : Tup2_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tup2_0;
  function toSLV (p : Tup3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tup3;
  function toSLV (p : Tup2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return Tup2;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
end;

package body DramTest_types is
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
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function fromSLV (slv : in std_logic_vector) return signed is
    alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return signed(islv);
  end;
  function toSLV (value : in State) return std_logic_vector is
  begin
    return std_logic_vector(to_unsigned(State'pos(value), 1));
  end;
  function fromSLV (slv : in std_logic_vector) return State is
  begin
    return State'val(to_integer(unsigned(slv)));
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
  function toSLV (p : Tup2_0) return std_logic_vector is
  begin
    return (toSLV(p.Tup2_0_sel0_unsigned_0) & toSLV(p.Tup2_0_sel1_unsigned_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tup2_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)));
  end;
  function toSLV (p : Tup3) return std_logic_vector is
  begin
    return (toSLV(p.Tup3_sel0_State) & toSLV(p.Tup3_sel1_unsigned_0) & toSLV(p.Tup3_sel2_unsigned_1));
  end;
  function fromSLV (slv : in std_logic_vector) return Tup3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 32)),fromSLV(islv(33 to 40)));
  end;
  function toSLV (p : Tup2) return std_logic_vector is
  begin
    return (toSLV(p.Tup2_sel0_Tup3) & toSLV(p.Tup2_sel1_Tup2_0));
  end;
  function fromSLV (slv : in std_logic_vector) return Tup2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 40)),fromSLV(islv(41 to 56)));
  end;
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
end;

