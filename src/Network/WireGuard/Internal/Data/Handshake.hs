module Network.WireGuard.Internal.Data.Handshake (
 HandshakeInitSeed (..),
 HandshakeRespSeed
) where
  
import Crypto.Noise.DH            (KeyPair)
import Crypto.Noise.DH.Curve25519 (Curve25519)
import Data.Word                  (Word32)
import System.Posix.Types         (EpochTime)

data HandshakeInitSeed = 
  InitHandshakeSeed {
   handshakeEphemeralKey :: KeyPair Curve25519,
   handshakeNowTS        :: EpochTime,
   handshakeSeed         :: Word32}

type HandshakeRespSeed = EpochTime
  
