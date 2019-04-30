# psi-2019

Appunti di Probabilità e Statistica

## Occhio!

Questa repository è diversa dalle altre in cui ho pubblicato PDP compilato e file .lix: infatti qui ho usato direttamente il compilatore `latexmk` e ho spezzato il progetto nel modo seguente:

- `main.tex`: file principale, contenente preambolo, pagina del titolo e inclusione dei file per i capitoli;
- `chap*.tex`: file relativi ai capitoli, contengono unicamente il contenuto di ciascun capitolo.

In questo modo la gestione del progetto è più facile (posso lavorare su un capitolo alla volta) e poi posso imparare per bene il workflow LaTeX per progetti sostanziosi (finora mi sono limitato a lunghi file .lyx, con qualche comando personalizzato qua e là).

## Mamma, io volevo il PDF!

Non sarò la tua mamma, ma posso promettere che a breve integrerò questa repository in un sistema di continuous delivery per avere sempre una versione compilata e aggiornata del PDF a partire dal sorgente.

### Nel frattempo...

Ok, ho scritto che lo farò presto ma la tempistica è abbastanza relativa; nel frattempo potete usare `make all` per ottenere il file PDF nella cartella omonima. I requisiti per compilare sono i seguenti:
- una installazione *texlive*;
- il pacchetto *make*;
- il compilatore *latexmk*.
