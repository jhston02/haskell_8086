module Decoder where

import Data.ByteString

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

data Instruction = Mov {destination :: Register, source :: Register}

