#!/bin/bash

# Shows latest prices from BITSTAMP exchange in USD
#
# <bitbar.title>Bitstamp latest prices in USD</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Valdis Krumins</bitbar.author>
# <bitbar.author.github>vkfotolv</bitbar.author.github>
# <bitbar.desc>Shows latest Litecoin, Bitcoin, Ethereum, Bitcoin cash and Ripple prices from BITSTAMP in USD</bitbar.desc>
# <bitbar.image>https://i.imgur.com/vwRILun.png</bitbar.image>
#
# by Valdis Krumins
# Based on Coinbase bitbar plugin by Mat Ryer


echo -n "BTC: $"; curl -s "https://www.bitstamp.net/api/v2/ticker/btcusd/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g' 

echo '---'

echo -n "ETH: $"; curl -s "https://www.bitstamp.net/api/v2/ticker/ethusd/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "LTC: $"; curl -s "https://www.bitstamp.net/api/v2/ticker/ltcusd/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "BCH: $"; curl -s "https://www.bitstamp.net/api/v2/ticker/bchusd/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,2}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "XRP: $"; curl -s "https://www.bitstamp.net/api/v2/ticker/xrpusd/" | egrep -o '"last": "[0-9]+(\.)?([0-9]{0,10}")?' | sed 's/"last": //' | sed 's/\"//g'

echo -n "Open Tradeview | href=https://www.bitstamp.net/market/tradeview/"