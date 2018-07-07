#!/bin/bash

# common output files
sharesfile=shares.txt
outputfile=output.txt

# miner's address
addr=123456790

# port
port=18331

#Local
ip=http://127.0.0.1
user=equibitusername
pass=equibitpass


echo "Staring Equibit Miner (equibitminer), connecting to: $ip and port $port. Sending mining reward to address: $addr, "


# Uncomment the desired configuration.. 

# Non-interactive mode, CPU mining, all logs enabled
#./equibitminer --text-only -u $user -p $pass  --generate-to $addr --coinbase-sig "This is Equibit block" --verbose --debug --debuglog --protocol-dump --url $ip:$port  -S cpu:auto --show-processors --worktime --log-file $outputfile --sharelog $sharesfile


# Non-interactive mode, GPU mining, all logs enabled
./equibitminer --text-only -u $user -p $pass  --generate-to $addr --coinbase-sig "This is Equibit block" --verbose --debug --debuglog --protocol-dump --url $ip:$port  -S opencl:auto --show-processors --worktime --log-file $outputfile --sharelog $sharesfile


# Interactive mode, GPU mining, all logs enabled 
#./equibitminer -u $user -p $pass  --generate-to $addr --coinbase-sig "This is Equibit block" --verbose --debug --debuglog --protocol-dump --url $ip:$port  -S opencl:auto --show-processors --worktime --log-file $outputfile --sharelog $sharesfile




