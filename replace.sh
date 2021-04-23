replace (){
    cd $1
    for i in {1..9}
    do
        source="0${i}.${2}"
        target="0${source}"
        mv $source $target
    done
    
    for i in {10..99}
    do
        source="${i}.${2}"
        target="0${source}"
        mv $source $target
    done
}

read -p "Gimme directory path boy:" DIR_PATH
read -p "Gimme extension boy (without dot[.]):" EXT

replace $DIR_PATH $EXT

