#!/bin/bash

# Shows latest prices from BITSTAMP exchange in EUR
#
# <bitbar.title>Bitstamp latest prices in EUR</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Valdis Krumins</bitbar.author>
# <bitbar.author.github>vkfotolv</bitbar.author.github>
# <bitbar.desc>Shows latest Litecoin, Bitcoin, Ethereum, Bitcoin cash and Ripple prices from BITSTAMP in EUR</bitbar.desc>
# <bitbar.image>https://i.imgur.com/RkSwWzf.png</bitbar.image>
#
# by Valdis Krumins
# Based on Coinbase bitbar plugin by Mat Ryer


echo -n "BTC: €"; curl -s "https://www.bitstamp.net/api/v2/ticker/btceur/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g' 

echo '---'

echo -n "ETH: €"; curl -s "https://www.bitstamp.net/api/v2/ticker/etheur/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "LTC: €"; curl -s "https://www.bitstamp.net/api/v2/ticker/ltceur/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "BCH: €"; curl -s "https://www.bitstamp.net/api/v2/ticker/bcheur/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "XRP: €"; curl -s "https://www.bitstamp.net/api/v2/ticker/xrpeur/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,10}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "Open Tradeview | href=https://www.bitstamp.net/market/tradeview/"