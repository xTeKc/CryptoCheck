








module Main where

main :: IO ()
main = putStrLn "Loading..."


data Crypto = Crypto { cryptoName   :: String,
                       cryptoSymbol :: String,
                       cryptoPrice  :: String
                         } deriving (Eq, Show)

bitcoin = Crypto {cryptoName = "Bitcoin", cryptoSymbol = "BTC", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=btc&vs_currencies=usd" }
btcData = show bitcoin

ethereum = Crypto {cryptoName = "Ethereum", cryptoSymbol = "ETH", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=eth&vs_currencies=usd" }
ethData = show ethereum

cardano = Crypto {cryptoName = "Cardano", cryptoSymbol = "ADA", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=ada&vs_currencies=usd" }
adaData = show cardano

xrp = Crypto {cryptoName = "XRP", cryptoSymbol = "XRP", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=xrp&vs_currencies=usd" }
xrpData = show xrp

polkadot = Crypto {cryptoName = "Polkadot", cryptoSymbol = "DOT", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=dot&vs_currencies=usd" }
dotData = show polkadot

uni = Crypto {cryptoName = "Uni", cryptoSymbol = "UNI", 
cryptoPrice = "https://api.coingecko.com/api/v3/simple/price?ids=uni&vs_currencies=usd" }
uniData = show uni