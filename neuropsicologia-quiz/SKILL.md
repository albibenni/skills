---
name: neuropsicologia-quiz
description: Genera un quiz personalizzato a scelta multipla su argomenti di neuropsicologia (es. funzioni cognitive, basi neurali, deficit clinici e test) in lingua italiana. Permette all'utente di scegliere il numero di domande e non include alcun esempio di codice.
---

# Neuropsicologia Quiz Master

Crea quiz a scelta multipla in italiano per verificare e consolidare concetti, modelli teorici e sindromi cliniche di neuropsicologia.

## Workflow

1. **Determina il numero di domande**: Usa il numero indicato dall'utente. Se non è specificato, chiedilo oppure proponi 10 domande e chiedi conferma prima di procedere.
2. **Analizza il contesto**: Individua concetti, relazioni causali, dissociazioni, diagnosi differenziali, compromessi diagnostici, basi neuroanatomiche e principali errori interpretativi da trattenere. Basa le domande sul materiale fornito; evita conoscenze esterne generiche se non pertinenti.
3. **Genera una copertura graduata**: Crea il numero richiesto di domande a scelta multipla con opzioni A–D. Distribuiscile in modo proporzionato tra:
   - **Fondamentali**: terminologia, definizioni, funzioni cognitive e principali correlati anatomici.
   - **Intermedie clinico-funzionali**: associazioni lesione-deficit, sintomi, dissociazioni e applicazione di modelli cognitivi.
   - **Avanzate diagnostico-teoriche**: casi clinici, diagnosi differenziale, interpretazione fine dei test e implicazioni dei modelli.
   Per quiz brevi, conserva almeno una domanda per ogni livello quando possibile. Non includere codice, terminologia informatica o esempi tecnologici estranei alla disciplina.
4. **Scrivi quesiti compatti**: Esprimi prima il punto decisionale. Usa una frase per domanda e una seconda breve frase solo se serve a fornire il contesto clinico essenziale. Mantieni ogni opzione su una riga, parallela nella struttura e di lunghezza comparabile; verifica che la risposta corretta non sia deducibile dalla formulazione o dalla sua lunghezza.
5. **Presenta e salva il quiz**: Mostra le opzioni A, B, C e D e salva quiz e soluzioni in `<argomento>_quiz_neuro.md` nella cartella di destinazione. Collega il quiz e la nota sorgente tramite Wikilink Obsidian; aggiungi un link a un file di esercizi solo se esiste ed è pertinente.
6. **Aggiungi i link Test Yourself**: Inserisci un solo link `[Test Yourself](test-yourself://open?quiz=<percorso-relativo-al-vault-codificato-URL>)` sia nel quiz sia nella nota sorgente. Ricava il percorso dalla posizione finale effettiva del quiz.
7. **Correggi con soluzioni dettagliate**: Alla fine del file aggiungi `## Risposte`. Per ciascun quesito, indica numero e lettera corretta (per esempio, `1. B`) e, nella riga immediatamente successiva, inserisci `Spiegazione: ` come primi caratteri della riga. Illustra il razionale clinico-scientifico e perché i distrattori risultano errati o fuorvianti.

## Requisiti rigorosi di formattazione

Il file `<argomento>_quiz_neuro.md` DEVE rispettare esattamente questo formato per consentirne l'analisi da strumenti esterni:

1. **Domande**: Ogni domanda inizia con il numero seguito da un punto, ad esempio `1. Quale deficit ...?`.
2. **Opzioni**: La domanda è seguita immediatamente da opzioni che iniziano con `A. `, `B. `, `C. ` e `D. `; sono obbligatorie almeno A e B.
3. **Sezione delle risposte**: Usa un'intestazione che contenga `Risposte` o `Soluzioni`.
4. **Chiave ed esplicazione**: Indica ogni soluzione come `1. B` e fai iniziare la riga immediatamente successiva, senza spazi iniziali, esattamente con `Spiegazione: `.

Esempio di formato:

```markdown
1. In un paziente con eminegligenza spaziale sinistra, quale comportamento è più atteso?
   A. Omettere stimoli nello spazio extrapersonale sinistro
   B. Perdere selettivamente la sensibilità dolorifica destra
   C. Non comprendere le istruzioni verbali semplici
   D. Confondere i volti familiari con quelli sconosciuti

## Risposte

1. A
Spiegazione: L'eminegligenza sinistra comporta una ridotta esplorazione e rappresentazione dello spazio controlaterale alla lesione, spesso associata a danno parietale destro.
```

## Linee guida

- **Rapido da leggere**: Parti dalla domanda, non da una lunga premessa. Usa verbi concreti e terminologia neuropsicologica familiare; elimina il contesto non necessario alla scelta. Non usare quesiti in forma di paragrafo né opzioni su più righe.
- **Difficile per la giusta ragione**: Fai dipendere la difficoltà da una distinzione clinicamente rilevante: condizione limite, direzione causale, dissociazione, diagnosi differenziale, sequenza di valutazione, fallimento del test o quasi-fraintendimento. Non renderlo difficile con formulazioni dense o ambigue.
- **Distrattori plausibili e bilanciati**: Deriva le alternative errate da misconcezioni realistiche, quadri clinici vicini o interpretazioni quasi corrette. Mantieni opzioni parallele per grammatica, dettaglio e lunghezza approssimativa. La risposta corretta non deve essere l'unica più lunga, precisa o qualificata. Varia in modo non prevedibile le risposte corrette tra A–D.
- **Applica la comprensione**: Privilegia scenari clinici minimi e realistici quando cambiano la risposta; ricorri al puro richiamo solo per terminologia o fatti davvero fondamentali. Evita di duplicare lo stesso concetto in più domande.
- **Copertura importante**: Dai priorità a funzioni cognitive, relazioni lesione-deficit, modelli, invarianti diagnostiche, correlati neuroanatomici e comuni errori di interpretazione. Evita curiosità marginali.
- **Spiegazioni ad alto valore formativo**: Spiega perché la soluzione è corretta e perché le alternative possono sembrare plausibili ma sono errate. Richiama, quando pertinente, modelli di riferimento e correlazioni neuroanatomiche.
- **Accuratezza clinica e contestuale**: Usa terminologia medica accurata in italiano e mantieni ogni quesito coerente con le conoscenze neuropsicologiche attuali e con il materiale dell'utente.
- **Esclusione totale del codice**: Non inserire snippet di codice, pseudocodice, terminologia informatica o analogie informatiche.
- **Persistenza e link**: Salva il file come `<argomento>_quiz_neuro.md`. Nei file Markdown non usare URL `file:///`, percorsi assoluti o relativi: usa solo Wikilink Obsidian, eccetto il singolo link `test-yourself://` richiesto sopra. Non duplicare i link Test Yourself.
