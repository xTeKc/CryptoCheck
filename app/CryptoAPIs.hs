{-# LANGUAGE OverloadedStrings #-}
import Network.HTTP.Base
import qualified Data.ByteString.Lazy.Char8 as L8

{-module CryptoAPIs (
	btcAPI,
	ethAPI,
	adaAPI,
	xrpAPI,
	xrpAPI,
	dotAPI,
	uniAPI
	) where -}

cryptoAPIs =

		 btcAPI = "https://api.coingecko.com/api/v3/simple/price?ids=btc&vs_currencies=usd" >>= L8.putStrLn
		 ethAPI = "https://api.coingecko.com/api/v3/simple/price?ids=eth&vs_currencies=usd" >>= L8.putStrLn
		 adaAPI = "https://api.coingecko.com/api/v3/simple/price?ids=ada&vs_currencies=usd" >>= L8.putStrLn
		 xrpAPI = "https://api.coingecko.com/api/v3/simple/price?ids=xrp&vs_currencies=usd" >>= L8.putStrLn
		 dotAPI = "https://api.coingecko.com/api/v3/simple/price?ids=dot&vs_currencies=usd" >>= L8.putStrLn
		 uniAPI = "https://api.coingecko.com/api/v3/simple/price?ids=uni&vs_currencies=usd" >>= L8.putStrLn
		