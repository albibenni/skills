---
name: neuropsicologia-quiz
description: Genera un quiz personalizzato a scelta multipla su argomenti di neuropsicologia (es. funzioni cognitive, basi neurali, deficit clinici e test) in lingua italiana. Permette all'utente di scegliere il numero di domande e non include alcun esempio di codice.
---

# Neuropsicologia Quiz Master

Questo skill ha lo scopo di verificare e consolidare la comprensione di concetti, modelli teorici e sindromi cliniche nell'ambito della neuropsicologia attraverso quiz a scelta multipla personalizzati e strutturati.

## Workflow

1.  **Determinazione del Numero di Domande**: Identifica o chiedi all'utente il numero desiderato di domande per il quiz. Se l'utente non lo specifica, chiedi esplicitamente quante domande desidera prima di procedere, oppure proponi un numero predefinito (es. 10 domande) chiedendo conferma.
2.  **Analisi del Contesto**: Esamina il materiale fornito (dispense, note, testi di riferimento o contesto corrente) per individuare i temi chiave di neuropsicologia (ad esempio: afasie, aprassie, agnosie, memoria, funzioni esecutive, eminegligenza spaziale unilaterale, basi neuroanatomiche, test di valutazione neuropsicologica, ecc.).
3.  **Generazione delle Domande**: Crea il numero specificato di domande a scelta multipla (A, B, C, D) distribuendole in modo equilibrato tra:
    *   **Nozioni Fondamentali**: Definizioni di base, terminologia clinica, aree cerebrali principali.
    *   **Livello Intermedio (Clinico/Funzionale)**: Associazione tra lesioni e deficit, interpretazione di sintomi e dissociazioni (semplici e doppie), applicazione di modelli cognitivi.
    *   **Livello Avanzato (Diagnostica e Modelli)**: Casi clinici complessi, diagnosi differenziale, implicazioni di modelli teorici e interpretazione fine di test neuropsicologici.
    *   *Nota*: **Nessuna** domanda o risposta deve contenere codice di programmazione, terminologia informatica o esempi tecnologici estranei alla disciplina.
4.  **Presentazione e Salvataggio del Quiz**: Mostra le domande all'utente con le opzioni A, B, C e D. Salva contemporaneamente il quiz completo in un file chiamato `<argomento>_quiz_neuro.md` nella cartella di destinazione per consentire la persistenza dello studio.
5.  **Correzione con Spiegazioni Dettagliate**: Fornisci le soluzioni descrivendo non solo qual è la risposta corretta, ma spiegando anche il razionale scientifico/clinico sottostante e il motivo per cui gli altri distrattori sono errati o imprecisi.

## Linee Guida

*   **Opzioni Complesse e Distrattori Plausibili**: Le 4 opzioni di risposta devono essere complicate e presentare argomenti estremamente simili tra loro, in modo che solo uno studio approfondito e dettagliato permetta di distinguerle. Non devono presentare i pattern tipici della risposta esatta (ad esempio, la risposta corretta non deve essere visibilmente più lunga o articolata, poiché la spiegazione dettagliata sarà fornita a parte). Le opzioni devono essere indistinguibili per lunghezza, complessità sintattica e stile scientifico. Varia in modo casuale la lettera della risposta corretta (A, B, C o D).
*   **Chiarezza e Precisione Terminologica**: Utilizza una terminologia neuropsicologica e medica accurata in lingua italiana. Formula le domande in modo chiaro ed evita ambiguità linguistiche; la difficoltà del quiz deve risiedere nei concetti clinici e anatomici, non nella complessità o oscurità della frase.
*   **Esclusione Totale del Codice**: Questo skill è strettamente umanistico-scientifico/clinico. Non inserire snippet di codice, pseudo-codice o analogie informatiche.
*   **Spiegazioni ad Alto Valore Formativo**: Le risposte corrette devono essere accompagnate da spiegazioni che richiamano i modelli di riferimento (es. modelli di memoria di Baddeley, modello di attenzione di Posner, modelli di lettura, ecc.) e le correlazioni neuroanatomiche (es. lobo parietale, corteccia prefrontale dorsolaterale, ecc.).
*   **Accuratezza Clinica e Scientifica**: Assicurati che ogni domanda sia coerente con le attuali conoscenze neuropsicologiche e con il materiale fornito dall'utente.
