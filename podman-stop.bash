id=$(podman pod ps -q --filter name=onionservice)
podman pod stop $id
#podman pod kill $id
#podman pod rm $id
