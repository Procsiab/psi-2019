# psi-2019

[![Build Status](https://ci.fantasyshop.cf/api/badges/Procsiab/psi-2019/status.svg)](https://ci.fantasyshop.cf/Procsiab/psi-2019)
![Website](https://img.shields.io/website/https/fs.fantasyshop.cf.svg?down_message=offline&label=file-sharing&up_message=online)
![Static](https://img.shields.io/badge/licenza-GFDLv1.3-yellowgreen.svg)

Appunti di Probabilità e Statistica per l'Informatica, corso dell'anno accademico 2018-2019 del prof. Alberto Barchielli, Politecnico di Milano.
Le dispense sono state realizzate assistendo alle lezioni e integrando le conoscenze con il libro di testo consigliato.

## Dov'è il mio PDF?

Questa repository è diversa dalle altre in cui ho pubblicato PDP compilato e file .lix: infatti qui ho usato direttamente il compilatore `latexmk` e ho spezzato il progetto nel modo seguente:

- `main.tex`: file principale, contenente preambolo, pagina del titolo e inclusione dei file per i capitoli;
- `chap*.tex`: file relativi ai capitoli, contengono unicamente il contenuto di ciascun capitolo;
- `title.tex`: file contenente lo stile della pagina iniziale, con titolo di copertina e licenza.

In questo modo la gestione del progetto è più facile (posso lavorare su un capitolo alla volta) e poi posso imparare per bene il workflow LaTeX per progetti sostanziosi (finora mi sono limitato a lunghi file .lyx, con qualche comando personalizzato qua e là).

## Mamma, io volevo il PDF!

Questa repository non contiene il PDF perché esso è generato da un sistema di continuous delivery, per avere sempre una versione compilata e aggiornata del PDF a partire dal sorgente.

Il sistema di integrazione pubblica PDF compilati a questo indirizzo:
https://fs.fantasyshop.cf/

Ho scelto *Drone* per l'integrazione perché facile da mettere in funzione tramite container Docker; l'immagine che viene usata come base invece è un'installazione personalizzata di TexLive su ARMv7 (trovate [qui](https://github.com/Procsiab/texlive-rpi-it) il Dockerfile).

### Chi fa da sè...

Potete usare `make all` per ottenere il file PDF nella cartella omonima. I requisiti per compilare sono i seguenti:
- una installazione *texlive*;
- il pacchetto *make*;
- il compilatore *latexmk*.

### Branch **devel**

Nel branch `devel` piazzerò il lavoro in corso degli appunti, mentre tutti i capitoli ultimati saranno accessibili dal branch `master`.

Il branch `devel` ospiterà in ogni caso anche tutto il codice del branch `master`, ma il file *src/main.tex* in esso è impostato per compilare solamente il capitolo in corso.
