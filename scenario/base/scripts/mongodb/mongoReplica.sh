MONGODB1=`ping -c 1 mongo-rs1 | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongo --host mongo-rs1:27017 <<EOF
   var cfg = {
        "_id": "mongors1",
        "version": 1,
        "members": [
            {
                "_id": 0,
                "host": "${MONGODB1}:27017",
                "priority": 1
            }
        ]
    };
rs.initiate(cfg);
rs.reconfig(cfg,{force: true})
EOF

#ping 127.0.0.1 > /dev/null
