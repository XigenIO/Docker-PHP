
function dr()
{
    docker $@
    #docker -H tcp://10.10.1.6:2756 $@
}

function build()
{
    local file=$1
    local image=xigen/php:$2
    local context=$3
    dr build --squash --pull -f ${file} -t ${image} ${context}
    dr image inspect ${image} --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }'
}

function test()
{
    echo "Testing image"
    # docker run --rm $1 php -v
}
