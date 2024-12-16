# \_language-sl.yaml

## Uporaba

**POZOR! Trenutno testirano samo v Quarto projektih! V RMarkDown ne testirano.**

Datoteko \_language-sl.yaml lahko uporabiš za nastavitev slovenščine kot privzeti jezik. S tem se bodo elementi .html (ostalo ne testirano) datotek kot so ["Author", "Date",...](./YAMLphotos/Slika1.png) prevedeni v [slovenščino](./YAMLphotos/Slika2.png).

## Koda za implementacijo

### Windows

```
  ---
  # Druge nastavitve (title, date,...)
  language: "C:/pot/do/direktorija/_language-sl.yaml"
  ---
```

### Linux 

#### V istem direktoriju

```
  ---
  # Druge nastavitve (title, date,...)
  language: "./_language-sl.yaml"
  ---
```

#### V drugem direktoriju

```
  ---
  # Druge nastavitve (title, date,...)
  language: "./pot/do/direktorija/_language-sl.yaml"
  ---
```

## Drugo

Če kakšen prevod ustrezen, odpri *Issue* s celotno referenco iz _language-sl.yaml datoteke (npr. toc-title-document: "Kazalo vsebine") in ustreznim prevodom.
