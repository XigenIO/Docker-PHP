
function dr()
{
    docker -H tcp://10.10.1.6:2756 $@
}

function build()
{
    dr build --squash --pull -f $1 -t $2 $3
    dr image inspect $2 --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }'
}

function test()
{
    echo "Testing image"
    # docker run --rm $1 php -v
}
