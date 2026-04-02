# 1. Create a directory to store the packages
mkdir -p local_apks

# 2. Use a temporary Alpine container to fetch the packages recursively
# Replace 'alpine:3.23' with the exact tag used in your target image
docker run --rm -v "$(pwd)/local_apks:/out" alpine:3.23 sh -c "apk update && apk fetch --recursive --output /out easy-rsa openssl"
