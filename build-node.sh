set -x
pushd $1
docker build -t $1 .
