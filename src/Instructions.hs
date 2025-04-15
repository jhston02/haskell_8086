module Instructions where

import Data.Word (Word8)

type EncodedInstruction = (Word8, Word8)

data Register
  = AL
  | CL
  | DL
  | BL
  | AH
  | CH
  | CD
  | BH
  | AX
  | CX
  | DX
  | BX
  | SP
  | BP
  | SI
  | DI

type MemoryAddress = Integer

data MemoryLocation
  = CPU Register
  | Memory MemoryAddress

data Instruction = Mov {destination :: MemoryLocation, source :: MemoryLocation}
