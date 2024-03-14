################################## 
# Author: Katja C. Seltmann
# Email: enicospilus@gmail
# Start Date: March, 2024
# Last code update: 
# Purpose: get interaction records for specific bees
################################## 


while read p; do
  echo "$p"
  cat ../global-bee-interaction-data/all_bee_data.tsv | grep "$p" >> output.txt
done < names.txt

cat  output.txt  | grep -w "Plantae" >> output-plants-only.txt

cat output-plants-only.txt | cut -f3,12,14,43,52,54 >> plants-only-less.txt

sort -r plants-only-less.txt | uniq >> uniq-plants-only-less.txt
