# konfiguracja git
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"

# utworzenie katalogu
mkdir my-project

# zmiana katalogu
cd my-project

# utworzenie pliku README.md
# .md to Markdown , składnia: https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf
echo "# Welcome to my-project" >> README.md

#inicjalizacja repozytorium w katalogu biezacym
git init

# dodanie pliku do repo (stage)
git add README.md

# commit (to tez sie dzieje lokalnie)
git commit -m "Initial commit"

# opcjonalnie utworzenie brancza o nazwie main, zeby nie byc rasistą
git branch -M main

# dodanie serwera do synchronzacj pod nazwą origin
git remote add origin git@github.com:username/my-project.git

# opcjonalnie: dodanie drugiego remote'a
git remote add private git@github.com:username-private/my-project.git

#wyświetlenie serwerów zdalnych, z którymi synchronizujemy repo
git remote -v

# wypchnięcie kodu do serwera oznaczonego jako origin, do gałęzi main
git push -u origin main

# wypchnięcie kodu do serwera oznaczonego jako private, do gałęzi master
git push -u private master

# pomoc : git komenda --help albo 
git commit --help
gir branch -h # wyświetla opcje komendy