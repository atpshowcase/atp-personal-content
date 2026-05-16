
## Main Request
Generate a PostgreSQL INSERT script.
js-Fundamentals-Learning-Roadmap-Complete.html using the format in read script insert db

## Requirement Changes You Asked

1. Add header/module structure in mstLearningModule.
2. Change structure to one module per BAB (A, B, C, ... S), not a single module.
3. Remove ID field (auto-increment) and set TrackID to 11.
4. Fix SQL integrity issues (module-section relation / ModuleID matching).
5. Adjust module ID sequence after 106 (final sequence became 105-123).
6. Ensure code snippets are stored in database (not empty in CodeSnippet).
7. Fill all missing code snippets across content.

## Final Target Output
- 19 records in mstLearningModule (BAB A-S)
- 48 records in mstLearningSection (A.1-S.4)
- All sections linked by valid ModuleID
- TrackID set to 11
- CodeSnippet populated for all relevant sections

## Output Files Produced During Work
- new file sql

## Notes
This summary captures your prompts and requirement evolution during the conversation so the SQL generation process can be repeated consistently.

## Dynamic Prompt Template (Reusable)
Use this prompt whenever you want to generate SQL content for a new topic.

```text
Read [TEMPLATE_FILE] and create PostgreSQL INSERT script

Requirements:
1. Use structure: mstLearningModule -> mstLearningSection.
2. Create one mstLearningModule per BAB (A, B, C, ...), not a single module.
3. Use TrackID = [TRACK_ID].
4. Keep valid ModuleID relation between module and section.
5. Ensure every section that has code example is stored in CodeSnippet (not empty).
7. Follow SQL format exactly from [TEMPLATE_FILE].
```


Requirements:
1. Use structure: mstLearningModule -> mstLearningSection.
2. Create one mstLearningModule per BAB (A, B, C, ...), not a single module.
3. Use TrackID = 11.
4. Keep valid ModuleID relation between module and section.
5. Ensure every section that has code example is stored in CodeSnippet (not empty).
```

## Fast Example Topic Swaps
- React: React-Fundamentals-Learning-Roadmap-Complete.html
- Golang: Golang-Fundamentals-Learning-Roadmap-Complete.html
- JavaScript: JavaScript-Fundamentals-Learning-Roadmap-Complete.html
- C#: CSharp-Fundamentals-Learning-Roadmap-Complete.html