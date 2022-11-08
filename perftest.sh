host="fabmedical-784996.documents.azure.com"
username="fabmedical-784996"
password="AmPt8M11mxIl8VDHOGPCMTPl2Gysc7svdFMdqHhW2Nr9eoghQC77GdgC2wACZdWGBzJEwH8FqnZVACDb3BEmyQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
