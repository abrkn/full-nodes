set -x
pushd $1
docker stop $1 || true
docker rm $1 || true
docker run -i \
	--name $1 \
	-v /opt/full-nodes/$1/data:/data \
	$1
