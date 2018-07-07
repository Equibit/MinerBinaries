# Equibitminer

Equibitminer version 0.1.1 

Equibitminer is a fork of BFGMiner 5.5.0  
BFGMiner is a multi-threaded, multi-blockchain, multi-pool ASIC, FPGA, GPU and CPU  
miner with dynamic clocking, monitoring, and fanspeed support for bitcoin.  
Learn more about BFGMiner at https://github.com/luke-jr/bfgminer.  

Tested on platform(s): Ubuntu 16.04    

## Execute summary on usage:

Equibitminer supports a number of parameters through command line and config file. Equibitminer can run in both interactive and non-interactive mode. To learn more about the parameters run: *"equibitminer --help"*. 

To know more about the binary version, and supported drivers and algorithms run: *"equibitminer --version"*.

### Selection of common parameters:

--user|-u (arg)       Username for Equibit JSON-RPC server  
--pass|-p (arg)       Password for Equibit JSON-RPC server  
--url|-o (arg)        URL for Equibit JSON-RPC server  
--text-only|-T        Disable ncurses formatted screen output  
--generate-to (arg)   Set an address to generate to for solo mining  
--log-file|-L (arg) Append log file for output messages  
--verbose           Log verbose output to stderr as well as status output  
--debug|-D          Enable debug output  
--debuglog          Enable debug logging  
--scan|-S (arg)      Configure how to scan for mining devices  

For the full list of parameters refer to:  https://github.com/luke-jr/bfgminer

### Examples commands: 

**Variables used in the following example commands:**

addr=(Place coinbase address)  
signature=(Place coinbase signature)
port=(place RPC port)    
ip=(Place pool address here)  
user=(Place RPC username here)  
pass=(Place RPC password here)
___


**Enable full logging and summary level, select CPU mining, choose coinbase address and signature, non-interactive:**  


* equibitminer --text-only -u $user -p $pass  --generate-to $addr --coinbase-sig $signature --verbose --debug --debuglog --protocol-dump --url $ip:$port  -S cpu:auto --show-processors --worktime --log-file $outputfile --sharelog $sharesfile

___

**Enable full logging and summary level, select *GPU* mining, choose coinbase address and signature, non-interactive:**

* equibitminer --text-only -u $user -p $pass  --generate-to $addr --coinbase-sig $signature --verbose --debug --debuglog --protocol-dump --url $ip:$port  -S opencl:auto --show-processors --worktime --log-file $outputfile --sharelog $sharesfile

____

**Basic single pool example:**

* equibitminer --url  $ip:$port -u $user -p $pass


---
## Scripts
You can refer to the Bash script *'start_miner.sh'* to run the miner with the above configurations.



