# Bitcoin Market Data
Largest tick market data for Bitcoin (mirror server of bitcoincharts.com).

- Latest update: **2018 Sun Jan 21 9:21 AM UTC**
- Number of supported exchanges: **119** (check list below)
- Total size (compressed): **3 GB**
- Total size (uncompressed): **22 GB**
- Total number of data points: **509,354,943**

<p align="center">
  <img src="https://bitcoin.org/img/icons/opengraph.png" width="100">
</p>

## How to generate the CSV from the compressed files

GitHub requires every file to be less than 100MB. 

All the files have been zipped first with GZip and split in smaller files.

For example, the compressed version of `coincheckJPY.csv` is:

- bitcoin_market_data/coincheckJPY/coincheckJPY.csv.gz00
- bitcoin_market_data/coincheckJPY/coincheckJPY.csv.gz01
- bitcoin_market_data/coincheckJPY/coincheckJPY.csv.gz02
- bitcoin_market_data/coincheckJPY/coincheckJPY.csv.gz03
- bitcoin_market_data/coincheckJPY/coincheckJPY.csv.gz04

The reverse procedure (extraction) is:

```bash
cat bitcoin_market_data/coincheckJPY/* > coincheckJPY.csv.gz
gunzip coincheckJPY.csv.gz --verbose
ll coincheckJPY.csv
# -rw-r--r-- 1 premy users 3.6G Jan 21 18:33 coincheckJPY.csv
```

I provided scripts to automate all the extraction from the compressed files available on Github.

```bash
cd scripts
./extract.sh
```

All the files will be available in `bitcoin_market_data_csv` at the root of this repository, after the extraction is complete.


## Update the repository with new market data

```bash
cd scripts
./downloads.sh # a new folder will appear at the root of the repository called download/
./compress_for_github.sh # new market data will be available at bitcoin_market_data.
./push_to_github.sh # make sure you created a fork of this repository before pushing (it will generate ~289 commits).
```

Thanks in advance for contributing!

## Exchanges and pairs supported

0. **1coin**
    * USD
1. **abucoins**
    * EUR
    * PLN
    * USD
2. **allcoin**
    * USD
3. **anxhk**
    * AUD
    * CAD
    * CHF
    * CNY
    * EUR
    * GBP
    * HKD
    * JPY
    * NZD
    * SGD
    * USD
4. **aqoin**
    * EUR
5. **b2c**
    * USD
6. **b7**
    * EUR
    * USD
7. **bbm**
    * BRL
8. **bc**
    * EUR
    * GBP
    * mBMAUD
    * mBMGAU
    * mBMUSD
    * mLRUSD
    * mMBUSD
    * mMLUSD
    * mPPUSD
    * mPXGAU
    * norwayNOK
9. **bcmBM**
    * AUD
    * GAU
    * USD
10. **bcmLR**
    * USD
11. **bcmMB**
    * USD
12. **bcmML**
    * USD
13. **bcmPP**
    * USD
14. **bcmPX**
    * GAU
15. **bcnorway**
    * NOK
16. **bidxtrm**
    * PLN
17. **bit121**
    * GBP
18. **bit2c**
    * ILS
19. **bitalo**
    * CAD
    * EUR
    * GBP
    * PLN
    * USD
20. **bitbay**
    * EUR
    * PLN
    * USD
21. **bitbox**
    * USD
22. **bitcash**
    * CZK
23. **bitchange**
    * PLN
24. **bitcurex**
    * EUR
    * PLN
    * USD
25. **bitfinex**
    * USD
26. **bitfloor**
    * USD
27. **bitflyer**
    * JPY
28. **bitkonan**
    * USD
29. **bitmarket**
    * AUD
    * EUR
    * GBP
    * PLN
    * plPLN
    * RUB
    * USD
30. **bitmarketpl**
    * PLN
31. **bitmaszyna**
    * PLN
32. **bitme**
    * LTC
    * USD
33. **bitnz**
    * NZD
34. **bitomat**
    * PLN
35. **bitso**
    * MXN
36. **bitstamp**
    * EUR
    * USD
37. **bitstock**
    * CZK
38. **bitx**
    * IDR
    * MYR
    * NGN
    * ZAR
39. **britcoin**
    * GBP
40. **btc24**
    * EUR
    * USD
41. **btc2u**
    * BRL
42. **btcalpha**
    * USD
43. **btcbox**
    * JPY
44. **btcc**
    * USD
45. **btcde**
    * EUR
46. **btce**
    * EUR
    * RUR
    * urEUR
    * USD
    * xEUR
    * xJPY
    * xRUB
    * xUSD
    * xWMR
    * xWMZ
    * xYAD
47. **btceur**
    * EUR
48. **btcex**
    * EUR
    * JPY
    * RUB
    * USD
    * WMR
    * WMZ
    * YAD
49. **btchkex**
    * HKD
50. **btcmarkets**
    * AUD
51. **btcn**
    * CNY
52. **btcoid**
    * IDR
53. **btctrade**
    * CNY
54. **btctree**
    * USD
55. **btcx**
    * changeRON
    * EUR
    * USD
56. **btcxchange**
    * RON
57. **cbx**
    * USD
58. **cex**
    * btEUR
    * btJPY
    * btRUB
    * btUSD
    * btWMR
    * btWMZ
    * btYAD
    * EUR
    * RUB
    * USD
    * imEUR
    * imRUB
    * imUSD
59. **chbtc**
    * CNY
60. **chilebit**
    * CLP
61. **coinbase**
    * CAD
    * EUR
    * GBP
    * USD
62. **coincheck**
    * JPY
63. **coinfalcon**
    * EUR
64. **coinfloor**
    * GBP
65. **coinnest**
    * KRW
66. **coinsbank**
    * EUR
    * GBP
    * RUB
    * USD
67. **cotr**
    * USD
68. **cryptox**
    * AUD
    * USD
69. **crytr**
    * EUR
    * USD
70. **exchb**
    * USD
71. **exmo**
    * EUR
    * RUB
    * USD
72. **fbtc**
    * EUR
    * USD
73. **fisco**
    * JPY
74. **flucto**
    * PLN
75. **foxbit**
    * BRL
76. **fresh**
    * EUR
    * PLN
    * USD
77. **fybse**
    * SEK
78. **fybsg**
    * SGD
79. **getbtc**
    * USD
80. **global**
    * EUR
    * GBP
    * PLN
    * USD
81. **hitbtc**
    * EUR
    * USD
82. **ibwt**
    * EUR
    * GBP
    * LTC
    * USD
83. **icbit**
    * USD
84. **imcex**
    * EUR
    * RUB
    * USD
85. **indacoin**
    * USD
86. **intrsng**
    * EUR
    * GBP
    * PLN
    * USD
87. **itbit**
    * EUR
    * SGD
    * USD
88. **jubi**
    * CNY
89. **just**
    * EUR
    * LTC
    * NOK
    * USD
    * XRP
90. **korbit**
    * KRW
91. **kptn**
    * SEK
92. **kraken**
    * CAD
    * EUR
    * GBP
    * JPY
    * KRW
    * LTC
    * NMC
    * USD
    * XRP
93. **lake**
    * USD
94. **localbtc**
    * ARS
    * AUD
    * BRL
    * CAD
    * CHF
    * CZK
    * DKK
    * EUR
    * GBP
    * HKD
    * ILS
    * INR
    * MXN
    * NOK
    * NZD
    * PLN
    * RUB
    * SEK
    * SGD
    * THB
    * USD
    * VEF
    * VND
    * ZAR
95. **lybit**
    * CAD
    * USD
96. **mrcd**
    * BRL
97. **mtgox**
    * AUD
    * CAD
    * CHF
    * CNY
    * DKK
    * EUR
    * GBP
    * HKD
    * JPY
    * NOK
    * NZD
    * PLN
    * RUB
    * SEK
    * SGD
    * THB
    * USD
98. **nevbit**
    * PLN
99. **okcoin**
    * USD
100. **remitano**
    * VND
101. **ripple**
    * EUR
    * USD
    * XRP
102. **rmbtb**
    * CNY
103. **rock**
    * EUR
    * SLL
    * USD
104. **ruxum**
    * AUD
    * CHF
    * EUR
    * GBP
    * HKD
    * HUF
    * JPY
    * PLN
    * RUB
    * SEK
    * SGD
    * THB
    * UAH
    * USD
    * ZAR
105. **snwcn**
    * XRP
106. **surbtc**
    * VEF
107. **th**
    * ARS
    * AUD
    * BRL
    * CAD
    * CHF
    * CLP
    * CNY
    * CZK
    * DKK
    * EUR
    * GBP
    * HKD
    * ILS
    * INR
    * JPY
    * LRUSD
    * MXN
    * NOK
    * NZD
    * PEN
    * PLN
    * SEK
    * USD
    * ZAR
108. **thLR**
    * USD
109. **urdubit**
    * PKR
110. **vbtc**
    * VND
111. **vcx**
    * EUR
    * USD
112. **virtex**
    * CAD
113. **virwox**
    * SLL
114. **wbx**
    * AUD
115. **weex**
    * AUD
    * CAD
    * USD
116. **wex**
    * EUR
    * RUB
    * USD
117. **zaif**
    * JPY
118. **zyado**
    * EUR
