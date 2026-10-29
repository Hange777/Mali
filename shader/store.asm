# Valhall compute shader for the first RUN_COMPUTE test (M2b): one thread stores one word.
# STORE.i32 @data, address: the staging register (@r0) holds the data, the source pair (^r2:r3) the 64 bit address.
# The driver patches the three 32-bit immediates (the value, low and high half of the target address) at run time.
IADD_IMM.i32 r0, 0x0, #0x11111111
IADD_IMM.i32 r2, 0x0, #0x22222222
IADD_IMM.i32 r3, 0x0, #0x33333333
STORE.i32.slot0.end @r0, ^r2, offset:0
