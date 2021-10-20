#!/bin/sh

download_kali_files() {
    echo "Downloading preseed and post install files from Kali repo"
    curl -s -L -o ./templates/kali.preseed "https://gitlab.com/kalilinux/build-scripts/live-build-config/-/raw/master/kali-config/common/includes.installer/preseed.cfg"
    curl -s -L -o ./templates/kali.postinst "https://gitlab.com/kalilinux/build-scripts/live-build-config/-/raw/master/kali-config/common/includes.installer/kali-finish-install"
}

build_preseed_configs() {
    export GIT_REPO_RAW_URL='https://raw.githubusercontent.com/iesplin/kali-preseed/master/preseed'
    while IFS=, read -r preseed_file packages
    do
        export PRESEED_PACKAGES="$packages"
        cat ./templates/kali.preseed > ./preseed/${preseed_file}.cfg
        cat ./templates/custom.preseed | envsubst '$PRESEED_PACKAGES,$GIT_REPO_RAW_URL' >> ./preseed/${preseed_file}.cfg 
        echo "Generated ${preseed_file}.cfg"
    done < ./preseeds.csv
}

build_postinst_script() {
    cat ./templates/kali.postinst > ./preseed/postinst.sh
    cat ./templates/custom.postinst >> ./preseed/postinst.sh
    sed -i "s/grep -q '^deb '/grep -q '^deb http'/g" ./preseed/postinst.sh
    echo "Generated postinst.sh"
}

download_kali_files
build_preseed_configs
build_postinst_script
