#docker rm -f $(docker ps -a -q)
docker compose down; docker system prune --all --force && docker volume prune --force
rm -Rf ./consensus/beacondata ./consensus/validatordata ./consensus/genesis.ssz
rm -Rf ./execution/geth
docker compose build --no-cache && docker compose up -d