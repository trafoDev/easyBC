./clean_explorer.sh

echo "Bringing up Blockchain Explorer - START"
docker-compose -f "./docker-compose-explorer.yaml" up -d 2>/dev/null
docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}' | grep explorer
echo "Bringing up Blockchain Explorer - END"

