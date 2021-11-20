1. Otwórz git bash 
1. Zklonuj projekt z githuba, podmieniając wartości w nawiasach wąsatych na swoją nazwę uzytkownika i nazwę repozytorium:
    ```
    git clone https://github.com/{nazwa_uzytkownika}/{repozytorium}.git
    ```
    Na przykład:
    ```
    git clone https://github.com/hardkod/python-class-materials.git
    ```
1. przejdź do katalogu do którego zklonowałeś/-aś repozytorium, domyślnie będzie to nazwa repozytorium:
    ```
    cd {repozytorium}
    ```
    Na przykład:
    ```
    cd python-class-materials
    ```

    * [Opcjonalnie] sprawdź czy repozytorium sklonowało się poprawnie:
    ```
    git remote -v
    ```
    oraz 
    ```
    git status
    ```
1. w katalogu z repozytorium dodaj plik z kodem; skopiuj go lub dodaj nowy i wklej kod nad którym pracowałeś/-aś
1. sprawdź status:
    ```
    git status
    ```
    Nowy plik (w poniszym przykładzie `cards.py`) powinien znaleźć się w sekcji "Untracked files":
    ```bash
    ➜  git status
    On branch master
    ...
    Untracked files:
        (use "git add <file>..." to include in what will be committed)
	        cards.py
    ```
1. dodaj plikk to repo (stage):
    ```
    git add cards.py
    ```

1. sprawdź status:
    ```
    git status
    ```
    Teraz plik będzie w sekcji "Changes to be committed:"
    ``` bash
    ➜  git status
    On branch master
    ...
    Changes to be committed:
        (use "git rm --cached <file>..." to unstage)
	        new file:   cards.py
    ```

1. Zacommituj plik dodając sensowny opis:
    ``` bash
    ➜ git commit -m 'Added cards comparison and blackjack calculation'
    [master (root-commit) 5483e44] Added cards comparison and blackjack calculation
      1 file changed, 1 insertion(+)
      create mode 100644 cards.py
    ```

1. zsynchronizuj lokalne repozytorium z serwerem:
    ```
    git push origin main
    ```
    lub 
    ```
    git push origin master
    ```
    Komenda git push przymuje jako pierwszy argument nazwę remote'a, którą mozesz sprawdzić komendą `git remote -v`, domyślnie jest to "origin":
    ``` bash
    ➜  git remote -v
    origin	git@github.com:hardkod/python-class-materials.git (fetch)
    origin	git@github.com:hardkod/python-class-materials.git (push)
    ```
    Powyzej przykład dla repo sklonowanego przez SSH, ponizej przez HTTPS:
    ```
    ➜  git remote -v
    origin	https://github.com/hardkod/python-class-materials.git (fetch)
    origin	https://github.com/hardkod/python-class-materials.git (push)
    ```
    Drugim argumentem dla git push jest nazwa brancha zdalnego. Domyślnie jest to "master", ale jeśli korzystałeś/-aś z tutoriala githuba to tak jednym z kroków jest utworzenie brancha "main". 
    Nazwę brancha widać w git bash w linii polecenia (ostatnia wartość, w nawiasie).


