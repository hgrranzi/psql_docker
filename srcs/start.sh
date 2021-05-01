service postgresql start

mkdir /home/data

userdel -r data

useradd -G adm -p password -s /bin/bash -d /home/data data

echo "psql -f init.sql" | su postgres

./flyway migrate

sleep 25d
