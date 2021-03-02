
. env.sh
echo "Transfering asset$1 to $2 - START"
INVOKE={\"function\":\"TransferAsset\",\"Args\":[\"asset$1\",\"$2\"]}

peer chaincode invoke 	-o localhost:7050 --ordererTLSHostnameOverride orderer.example.com \
	--tls \
	--cafile ${HOME}/fabric-samples/test-network/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem \
	-C mychannel -n basic \
	--peerAddresses localhost:7051 --tlsRootCertFiles ${HOME}/fabric-samples/test-network/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt \
	--peerAddresses localhost:9051 --tlsRootCertFiles ${HOME}/fabric-samples/test-network/organizations/peerOrganizations/org2.example.com/peers/peer0.org2.example.com/tls/ca.crt \
	-c $INVOKE
echo "Transfering asset$1 to $2 - END"
