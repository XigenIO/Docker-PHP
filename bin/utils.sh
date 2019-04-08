
function dr()
{
    export docker_host_url='';
    if [ "$docker_host" ]; then
        docker_host_url="-H `echo $docker_host`"
    fi

    if [ "$build_debug_enable" = 1 ]; then
        echo "docker $docker_host_url $@"
    fi

    if [ "$1" = 'push' ]; then
        echo ""
        echo "[debug] ========================================= [debug]"
        echo "[debug] Pushing docker image $@"
        echo "[debug] 'docker $@'"
        echo "[debug] ========================================= [debug]"
        echo ""
    fi

    docker $docker_host_url $@
}

function build()
{
    local file=$1
    local image=xigen/php:$2
    local context=$3
    local debug_options="--pull -f ${file} -t ${image} ${context}";

    echo "Building image ${image} with dockerfile=$(pwd)/${file}";
    if [ "$build_debug_enable" = 1 ]; then
        debug_options="$debug_options --no-cache";

        echo "[debug] ========================================= [debug]"
        echo "Building in $(pwd)/${context}"
        echo "[debug] ========================================= [debug]"
    else
        debug_options="$debug_options  --quiet";
    fi

    echo "Options: '$debug_options'";
    echo ""
    dr build $debug_options
    echo ""
    dr image inspect ${image} --format='{{.Size}}' | awk '{ foo = $1 / 1024 / 1024 ; print foo "MB" }'
    echo ""
}

function test()
{
    echo "Testing image xigen/php:${1}";
    dr run --entrypoint php --rm xigen/php:${1} -v
    echo ""
    dr run --entrypoint php --rm xigen/php:${1} -m
    echo ""

    if [ "$build_debug_enable" = 1 ]; then
        echo ""
        echo "[debug] ========================================= [debug]"
        dr run --entrypoint php --rm xigen/php:${1} -i
        echo "[debug] ========================================= [debug]"
        echo ""
    fi;
}
