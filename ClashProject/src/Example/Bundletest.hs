module Example.Bundletest where
  import Clash.Prelude
  data Input x y = Input {
    i1 :: Unsigned x
    , i2 :: Unsigned y
    , i3 :: Unsigned x
  } deriving (Generic, NFDataX)
  data Output x y = Output {
    o1 :: Unsigned x
    , o2 :: Unsigned y
    , o3 :: Unsigned x
  }

  test :: forall dom x y . (HiddenClockResetEnable dom , KnownNat x, KnownNat y)
    => Signal dom (Unsigned x)
    -> Signal dom (Unsigned y)
    -> Signal dom (Unsigned x)
    -> (Signal dom (Unsigned x),Signal dom (Unsigned y), Signal dom (Unsigned x))
  test input1 input2 input3 = (o1 <$> result , o2 <$> result, o3 <$> result)
    where
      result = mealy testf 0 in1
      in1 = Input <$> input1 <*> input2 <*> input3

  -- State -> Input -> (State, Output)
  testf :: forall x y . ( KnownNat x, KnownNat y) => Unsigned 1 -> Input x y  -> (Unsigned 1, Output x y)
  testf state (Input in1 in2 in3) = (state', Output out1 out2 out3)
    where
      state' =  state
      out1 = in1
      out2 = in2
      out3 =  in3
