set -x
pushd $1
docker stop $1 || true
docker rm $1 || true
docker run -i \
	--name $1 \
	--volume /opt/full-nodes/$1/data:/data \
	$1

