








module Main where

main :: IO ()
main = putStrLn "Loading..."


data Crypto = Crypto { cryptoName   :: String,
                       cryptoSymbol :: String,
                       cryptoPrice  :: String
                         } deriving (Eq, Show)

bitcoin = Crypto {cryptoName = "Bitcoin", cryptoSymbol = "BTC", 
cryptoPrice = "" }
btcData = show bitcoin

ethereum = Crypto {cryptoName = "Ethereum", cryptoSymbol = "ETH", 
cryptoPrice = "" }
ethData = show ethereum

cardano = Crypto {cryptoName = "Cardano", cryptoSymbol = "ADA", 
cryptoPrice = "" }
adaData = show cardano

xrp = Crypto {cryptoName = "XRP", cryptoSymbol = "XRP", 
cryptoPrice = "" }
xrpData = show xrp

polkadot = Crypto {cryptoName = "Polkadot", cryptoSymbol = "DOT", 
cryptoPrice = "" }
dotData = show polkadot

uni = Crypto {cryptoName = "Uni", cryptoSymbol = "UNI", 
cryptoPrice = "" }
uniData = show uni