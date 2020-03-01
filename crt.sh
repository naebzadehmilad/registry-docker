openssl req -newkey rsa:2048 -nodes -sha256 \
        -keyout domain.key -x509 -days 956 \
        -out domain.cert
