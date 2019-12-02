# init

apt install jq

apt install postgresql-client 

# 0. create network

$ cd 0_create_net

$ create_net.sh

# 1. PostgreSQL

$ cd 1_PostgreSQL

$ run.sh

# 2. Hashicorp's Vault

$ cd 2_Vault

$ build.sh

$ run.sh

# 3 psql

$ cd 3_Dynamic_Credentials

$ 1_create_user.sh

$ 2_set_creds.sh

$ 3_get_creds.sh

$ 4_psql.sh
