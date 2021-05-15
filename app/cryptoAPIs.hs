



module CryptoAPIs (
	btcAPI,
	ethAPI,
	adaAPI,
	xrpAPI,
	xrpAPI,
	dotAPI,
	uniAPI
	) where




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