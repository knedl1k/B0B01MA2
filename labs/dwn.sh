#!/usr/bin/env bash
#GNU General Public License v3.0 
#knedl1k 2024

years=(2018 2019 2020 2021 2022 2023)

base_url="https://math.fel.cvut.cz/en/people/korbemir/mat2"

for year in "${years[@]}"; do
    mkdir -p "${year}_z"
    
    for i in {1..14}; do
        file_url="${base_url}/${year}z/${i}.cviceni_mat2_${year}_z.pdf"
        
        if [ "$i" -lt 10 ]; then
            target_file="${year}_z/0${i}.pdf"
        else
            target_file="${year}_z/${i}.pdf"
        fi
        
        wget -N -q "$file_url" -O "$target_file"
        
        if [[ -f "$target_file" ]]; then
            echo "Downloaded: $target_file"
        else
            echo "Did not find: $file_url"
        fi
    done
done
