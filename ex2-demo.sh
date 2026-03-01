if [ ! -f /usr/local/bin/cockroach ]; then
    sudo wget -O /usr/local/bin/cockroachdb-v24-3-6.tgz https://binaries.cockroachdb.com/cockroach-v24.3.6.linux-amd64.tgz
    sudo tar -xvzf /usr/local/bin/cockroachdb-v24-3-6.tgz -C /usr/local/bin --strip-components=1
    source ~/.bashrc
    sudo rm -rf /usr/local/bin/cockroachdb-v24-3-6.tgz
fi

cockroach demo --nodes=9 \
--demo-locality=\
region=europe,zone=europe-1:\
region=europe,zone=europe-2:\
region=europe,zone=europe-3:\
region=asia,zone=asia-1:\
region=asia,zone=asia-2:\
region=asia,zone=asia-3:\
region=southamerica,zone=sa-1:\
region=southamerica,zone=sa-2:\
region=southamerica,zone=sa-3 \
--no-example-database
