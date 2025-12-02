# ReRZóGeD

## Info (Polski/Polish)

[English version below](#info-english)

To repozytorium zawiera kod źródłowy dema **„ReRZóGeD”** zaprezentowanego na Silly Venture 2025 Winter Edition.

Projekt powstawał intensywnie i dynamicznie, dlatego kod miejscami nosi ślady szybkiego prototypowania i iteracji - zupełnie naturalne w produkcjach demoscenowych. Mimo to całość odzwierciedla realny proces twórczy i może być pomocna lub inspirująca dla innych.

Pierwotnie demo składało się z niezależnych plików, z których każdy reprezentował osobny efekt. Można je było uruchamiać samodzielnie lub po odpowiedniej konfiguracji - kompilować jako część większej całości za pomocą dyrektywy `icl`. W toku prac kilka z tych modułów zintegrowano, a niektóre rozwiązania uproszczono, stąd w źródłach można lokalnie zauważyć pozostałości po wcześniejszych wersjach koncepcji.

Kod dema (wraz z częścią danych) mieści się w obszarze `$8000-$BCFF`.  

Skompresowane dane graficzne umieszczono w dwóch dodatkowych bankach pamięci, natomiast dane muzyki - w trzecim. Muzykę skompresowano algorytmem LZSS przy użyciu narzędzi DMSC z pakietu [LZSS-SAP](https://github.com/dmsc/lzss-sap).

## Trivia

W trakcie tworzenia dema wykorzystano następujące narzędzia i rozwiązania:

- assembler [XASM](https://github.com/pfusik/xasm)
- Visual Studio Code - jako edytor
- rozszerzenie [XASM Syntax Highlighting](https://github.com/seban-slt/vscode-xasm-syntax) (wkrótce publiczne)
- do kompresji danych użyto formatu [ZX7 mini](https://github.com/antoniovillena/zx7mini)
- dekompresor ZX7 bazuje na implementacji udostępnionej przez [XXL](https://xxl.atari.pl/zx7-decompressor/)
- player strumieniujący muzykę oparto na implementacji DMSC - [PLAY LZS16](https://github.com/dmsc/lzss-sap/blob/main/asm/playlzs16.asm)

Player dekompresuje **18 strumieni LZSS-16** (dwa kanały po 9 rejestrów). Działa bardzo szybko w porównaniu z playerem z **Theta Music Composer 1.1**, dzięki czemu niektóre efekty mogą pracować z pełną prędkością **50 FPS**.

## Uwagi końcowe

Repozytorium ma charakter edukacyjny i pokazuje, w jaki sposób rozwijała się struktura projektu w trakcie prac nad demem.  
Znajdziesz tu zarówno kompletne rozwiązania, jak i fragmenty pochodzące z wcześniejszych koncepcji - być może okażą się interesujące lub przydatne w Twoich własnych eksperymentach.

Chcielibyśmy podziękować wszystkim, którzy przyczynili się do powstania tej produkcji:  
autorom użytych narzędzi, organizatorom [Silly Venture](https://sillyventure.eu) oraz naszym rodzinom, które dzielnie znosiły intensywny proces twórczy.

I oczywiście - ogromne podziękowania dla [RZóG-a](https://github.com/RZoG). Bez niego to wszystko nie miałoby szans się wydarzyć.

---

## Info (English)

This repository contains the source code of the demo "ReRZóGeD", presented at Silly Venture 2025 Winter Edition.

The project was developed in an intensive and dynamic workflow, so some parts of the code reflect quick prototyping and iterative experimentation - something very common in demoscene productions. Still, the code represents the real creative process behind the demo and may prove useful or inspiring to others.

Originally, the demo consisted of multiple independent files, each representing a separate effect. These modules could be executed on their own or - with proper configuration - compiled as part of a larger whole using the `icl` directive. As the project evolved, several of these components were integrated, while others were simplified or reworked. Because of this, some traces of earlier design ideas may still be visible in the sources.

The demo code (together with part of the data) fits in the `$8000-$BCFF` address range.  
Compressed graphic data is stored in two additional memory banks, while the music data resides in a third one. The music is compressed using the LZSS algorithm with tools from the [LZSS-SAP](https://github.com/dmsc/lzss-sap) package created by DMSC.

## Trivia

During development, the following tools and solutions were used:

- assembler [XASM](https://github.com/pfusik/xasm)
- Visual Studio Code as the editor of choice
- [XASM Syntax Highlighting](https://github.com/seban-slt/vscode-xasm-syntax) extension (to be released publicly)
- [ZX7 mini](https://github.com/antoniovillena/zx7mini) for data compression
- ZX7 decompressor based on the implementation by [XXL](https://xxl.atari.pl/zx7-decompressor/)
- music streaming player based on DMSC's implementation - [PLAY LZS16](https://github.com/dmsc/lzss-sap/blob/main/asm/playlzs16.asm)

The player decompresses **18 LZSS-16 streams** (two channels, 9 registers each).  
It is significantly faster than the player from **Theta Music Composer 1.1**, which allows some effects to run at the full **50 FPS**.

## Final notes

This repository is intended for educational purposes and reflects how the structure of the project evolved throughout the development of the demo. You will find both complete solutions and remnants of earlier concepts - perhaps useful in your own experiments.

We would like to thank everyone who made this production possible: 
the authors of the tools we used, the organizers of [Silly Venture](https://sillyventure.eu), and our families, who patiently endured the intensity of the creative process.

And of course, special thanks go to [RZóG](https://github.com/RZoG).  
Without him, none of this would have happened.
