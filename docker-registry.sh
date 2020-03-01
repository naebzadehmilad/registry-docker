docker run -d \
  --restart=always \
  --name registry \
  -v /var/registry/certs:/certs \
  -v /var/registry/data:/var/lib/registry \
  -v /var/registry/etc:/etc/docker/registry \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.cert \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  -p 5000:5000 \
  registry:2
