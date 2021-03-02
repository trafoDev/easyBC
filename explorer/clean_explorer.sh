echo "Bringing down Blockchain Explorer - START"
docker-compose -f "./docker-compose-explorer.yaml" down -v 2>/dev/null
echo "Bringing down Blockchain Explorer - END"

