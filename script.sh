#!/bin/bash

# Start from a clean slate of Git
rm -rf .git
git init

git add *
git commit -m 'Add generation script and README'

git branch EW-line
git checkout EW-line  # Start on EW-line from (2)
git commit --allow-empty -m 'Joo Koon'
git commit --allow-empty -m 'Pioneer'
git commit --allow-empty -m 'Boon Lay'
git commit --allow-empty -m 'Pioneer'
git commit --allow-empty -m 'Lakeside'
git commit --allow-empty -m 'Chinese Garden'
git commit --allow-empty -m 'Jurong East'
git branch NS-line

git commit --allow-empty -m 'Clementi'
git commit --allow-empty -m 'Dover'

git checkout --orphan HarbourFront
git commit --allow-empty -m 'HarbourFront'
git branch NE-line
git branch CC-line  
git checkout CC-line # Start on CC-line from (9)
git branch -D harbourfront

git commit --allow-empty -m 'Telok Blangah'
git commit --allow-empty -m 'Labrador Park'
git commit --allow-empty -m 'Pasir Panjang'
git commit --allow-empty -m 'Haw Par Villa'
git commit --allow-empty -m 'Kent Ridge'
git commit --allow-empty -m 'one-north'
git merge EW-line -m 'Buona Vista' # Create Buona Vista Interchange
git checkout EW-line
git merge CC-line # Fastforward CC-line to Buona Vista

git commit --allow-empty -m 'Commonwealth'
git commit --allow-empty -m 'Queenstown'
git commit --allow-empty -m 'Redhill'
git commit --allow-empty -m 'Tiong Bahru'

git checkout CC-line
git commit --allow-empty -m 'Holland Village'
git commit --allow-empty -m 'Farrer Road'
git commit --allow-empty -m 'Botanic Gardens'
git commit --allow-empty -m 'Caldecott'
git commit --allow-empty -m 'Marymount'

git checkout NE-line # Start on NE-line from (6)
git merge --no-ff EW-line -m 'Outram Park' # Create Outram Park Interchange
git checkout EW-line
git merge NE-line   # Fastforward EW-line to Outram Park

git checkout NE-line
git commit --allow-empty -m 'Chinatown'
git branch DT-line
git commit --allow-empty -m 'Clarke Quay'

git checkout EW-line
git commit --allow-empty -m 'Tanjong Pagar'

git checkout --orphan marina-bay
git commit --allow-empty -m 'Marina Bay'
git branch NS-line-ns27
git branch CC-line-ce2
git checkout NS-line-ns27 # Start on NS-line from (5)
git merge EW-line -m 'Raffles Place' # Create Raffles Place Interchange
git checkout EW-line
git merge NS-line-ns27  # Fastforward EW-line to Raffles Place

git commit --allow-empty -m 'City Hall'
git branch city-hall

git checkout NS-line # Start on NS Line from (4)
git commit --allow-empty -m 'Bukit Batok'
git commit --allow-empty -m 'Bukit Gombak'
git commit --allow-empty -m 'Choa Chu Kang'
git commit --allow-empty -m 'Yew Tee'
git commit --allow-empty -m 'Kranji'
git commit --allow-empty -m 'Marsiling'
git commit --allow-empty -m 'Woodlands'
git commit --allow-empty -m 'Admiralty'
git commit --allow-empty -m 'Sembawang'
git commit --allow-empty -m 'Yishun'
git commit --allow-empty -m 'Khatib'
git commit --allow-empty -m 'Yio Chu Kang'
git commit --allow-empty -m 'Ang Mo Kio'

git merge CC-line -m 'Bishan'  # Merge Circle Line into NS Line
git checkout CC-line
git merge NS-line # Fastforward CC-line to Bishan
git commit --allow-empty -m 'Lorong Chuan'

git checkout NS-line  # At Bishan Interchange
git commit --allow-empty -m 'Braddell'
git commit --allow-empty -m 'Toa Payoh'
git commit --allow-empty -m 'Novena'
git commit --allow-empty -m 'NEW-lineton'
git commit --allow-empty -m 'Orchard'
git commit --allow-empty -m 'Somerset'

git merge city-hall NE-line -m 'Dhoby Ghaut' # Octopus merge of Somerset, Clarke Quay and City Hall
git branch CC-line-cc1
git checkout NE-line

# NS-line complete

git commit --allow-empty -m 'Little India'
git commit --allow-empty -m 'Farrer Park'
git commit --allow-empty -m 'Boon Keng'
git commit --allow-empty -m 'Potong Pasir'
git commit --allow-empty -m 'Woodleigh'
git merge CC-line -m 'Serangoon'
git checkout CC-line
git merge NE-line # Fastforward CC-line to Serangoon

git checkout NE-line # At Serangoon Interchange
git commit --allow-empty -m 'Kovan'
git commit --allow-empty -m 'Hougang'
git commit --allow-empty -m 'Buangkok'
git commit --allow-empty -m 'Sengkang'
git commit --allow-empty -m 'Punggol' # End of NE-line (7)

git checkout CC-line
git commit --allow-empty -m 'Bartley'
git commit --allow-empty -m 'Tai Seng'
git commit --allow-empty -m 'MacPherson'

git checkout CC-line-cc1

git commit --allow-empty -m 'Bras Basah'
git commit --allow-empty -m 'Esplanade'

git checkout DT-line # At Chinatown Interchange
git commit --allow-empty -m 'Telok Ayer'
git commit --allow-empty -m 'Downtown'
git merge CC-line-ce2 -m 'Bayfront'

git merge CC-line-cc1 -m 'Promenade'
git branch CC-line-cc4
git checkout CC-line-cc4  # At Promenade Interchange
git commit --allow-empty -m 'Nicoll Highway'
git commit --allow-empty -m 'Stadium'
git commit --allow-empty -m 'Mountbatten'
git commit --allow-empty -m 'Dakota'

git checkout EW-line
git merge --no-ff DT-line -m 'Bugis'

git commit --allow-empty -m 'Lavender'
git commit --allow-empty -m 'Kallang'
git commit --allow-empty -m 'Aljunied'

git merge CC-line CC-line-cc4 -m 'Paya Lebar'

# CC-line complete

git commit --allow-empty -m 'Eunos'
git commit --allow-empty -m 'Kembangan'
git commit --allow-empty -m 'Bedok'
git commit --allow-empty -m 'Tanah Merah'
git branch changi-extension
git commit --allow-empty -m 'Simei'
git commit --allow-empty -m 'Tampines'
git commit --allow-empty -m 'Pasir Ris' # End of EW-line (1)

git checkout changi-extension  # At Tanah Merah Interchange
git commit --allow-empty -m 'Expo'
git commit --allow-empty -m 'Changi Airport' # End of Changi extension (3)

if [ ! -z "$1" ] && [ "$1" = "push" ]; then
  git remote add origin git@github.com:yangshun/smrt-git.git
  git push --all --force
fi
