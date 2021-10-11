{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 pragma solidity ^0.8.9;\
\
import "./Cappedcrowdsale.sol";\
\
contract AlbertCrowdSale is Cappedcrowdsale \{\
    uint256 internal constant ethCap = 10000 ether;\
    uint256 internal constant oneEthToTokens = 100000;\
    \
    constructor(address _wallet, ERC20 _token) public \
        Crowdsale(oneEthToTokens, _wallet, _token)\
        Cappedcrowdsale(ethCap)\
    \{\
        \
    \}\
    \
\}q}