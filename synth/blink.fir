;buildInfoPackage: chisel3, version: 3.1.2, scalaVersion: 2.11.12, sbtVersion: 1.1.1, builtAtString: 2018-07-25 16:52:17.431, builtAtMillis: 1532537537431
circuit blink : 
  module blink : 
    input clock : Clock
    input reset : UInt<1>
    output io : {led1 : UInt<1>, led2 : UInt<1>, led3 : UInt<1>}
    
    reg cntReg : UInt<32>, clock with : (reset => (reset, UInt<32>("h00"))) @[Blink.scala 17:23]
    reg blkReg : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Blink.scala 18:23]
    node _T_16 = add(cntReg, UInt<1>("h01")) @[Blink.scala 20:20]
    node _T_17 = tail(_T_16, 1) @[Blink.scala 20:20]
    cntReg <= _T_17 @[Blink.scala 20:10]
    node _T_18 = eq(cntReg, UInt<25>("h017d783f")) @[Blink.scala 21:15]
    when _T_18 : @[Blink.scala 21:28]
      cntReg <= UInt<1>("h00") @[Blink.scala 22:12]
      node _T_20 = not(blkReg) @[Blink.scala 23:15]
      blkReg <= _T_20 @[Blink.scala 23:12]
      skip @[Blink.scala 21:28]
    io.led1 <= blkReg @[Blink.scala 25:11]
    io.led2 <= blkReg @[Blink.scala 26:11]
    io.led3 <= blkReg @[Blink.scala 27:11]
    
