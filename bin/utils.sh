
function dr()
{
    docker $@
}

function build()
{
    local file=$1
    local image=xigen/php:$2
    local context=$3
    dr build --squash --pull -f ${file} -t ${image} ${context}
    dr image inspect ${image} --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }'
}

function buildNoPull()
{
    local file=$1
    local image=xigen/php:$2
    local context=$3
    dr build --squash -f ${file} -t ${image} ${context}
    dr image inspect ${image} --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }'
}

function test()
{
    echo "Testing image";
    dr run --rm xigen/php:${1} php -v
}
