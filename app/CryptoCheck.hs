






import CryptoAPIs


{-module Main where

main :: IO ()
main = putStrLn "Loading..."-}


data Crypto = Crypto { cryptoName   :: String,
                       cryptoSymbol :: String,
                       cryptoPrice  :: [Char]
                         } deriving (Eq, Show)


bitcoin = Crypto {cryptoName = "Bitcoin", cryptoSymbol = "BTC", 
cryptoPrice = btcAPI }
btcData = show bitcoin

ethereum = Crypto {cryptoName = "Ethereum", cryptoSymbol = "ETH", 
cryptoPrice = ethAPI }
ethData = show ethereum

cardano = Crypto {cryptoName = "Cardano", cryptoSymbol = "ADA", 
cryptoPrice = adaAPI }
adaData = show cardano

xrp = Crypto {cryptoName = "XRP", cryptoSymbol = "XRP", 
cryptoPrice = xrpAPI }
xrpData = show xrp

polkadot = Crypto {cryptoName = "Polkadot", cryptoSymbol = "DOT", 
cryptoPrice = dotAPI }
dotData = show polkadot

uni = Crypto {cryptoName = "Uni", cryptoSymbol = "UNI", 
cryptoPrice = uniAPI }
uniData = show uni