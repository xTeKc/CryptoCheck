








module Main where

main :: IO ()
main = putStrLn "Loading..."


data Crypto = Crypto { cryptoName   :: String,
                       cryptoSymbol :: String,
                       cryptoPrice  :: [Char]
                         } deriving (Eq, Show)
btcAPI :: 
btcAPI = "https://api.coingecko.com/api/v3/simple/price?ids=btc&vs_currencies=usd"

ethAPI ::
ethAPI = "https://api.coingecko.com/api/v3/simple/price?ids=eth&vs_currencies=usd"

adaAPI ::
adaAPI = "https://api.coingecko.com/api/v3/simple/price?ids=ada&vs_currencies=usd"

xrpAPI :: 
xrpAPI = "https://api.coingecko.com/api/v3/simple/price?ids=xrp&vs_currencies=usd"

dotAPI :: 
dotAPI = "https://api.coingecko.com/api/v3/simple/price?ids=dot&vs_currencies=usd"

uniAPI :: 
uniAPI = "https://api.coingecko.com/api/v3/simple/price?ids=uni&vs_currencies=usd"

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