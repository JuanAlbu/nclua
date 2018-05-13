local tests = require ('tests')
local ASSERT = tests.ASSERT
local ASSERT_ERROR = tests.ASSERT_ERROR
local TRACE = tests.trace
local TRACE_SEP = tests.trace_sep

local x

-- Check bitwise operations.
x = ASSERT (bit32.bnot(0xFFFFFFFF))
print(bit32.bnot(1) == (-1 - 1) % 2^32)
print("O resutado do NOT é",x)

x = ASSERT(bit32.arshift(0xF,1))
print("O resutado do deslocamento é:",x)

x = ASSERT(bit32.lshift(0xF,1))
print("O resutado do deslocamento é:",x)

x = ASSERT(bit32.rshift(0xF,1))
print("O resutado do deslocamento é:",x)

x = ASSERT(bit32.band(0xF,0xF))
print("O resutado da AND é:",x)

x = ASSERT(bit32.bor(0xF,0x0))
print("O resutado da OR é:",x)

x = ASSERT(bit32.btest(0xF,0xF))
print("Todos os operando sao diferentes de 0:",x)

x = ASSERT(bit32.bxor(0xF,0x1))
print("O resultado do XOR é",x)

x = ASSERT(bit32.lrotate(0xF,2))
print("O resultado do lrotate é",x)

x = ASSERT(bit32.rrotate(0xF,2))
print("O resultado do rrotate é",x)

ASSERT(bit32.extract(0xABCDEF, 2, 4))
print(0xCDE)

ASSERT(bit32.replace(0xABCDEF, 0XFF, 2, 4))
print(0xCDE)