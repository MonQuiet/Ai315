# anti-fraud-bot (early stage)

This module is currently a scaffold for a Telegram anti-fraud bot.

## Status
- Core code is a minimal Java entry point used to verify build/run flow.
- Telegram integration, retrieval, and risk scoring are planned but not yet implemented.

## Requirements
- Java 17+
- Maven 3.8+

## Build
```bash
mvn -q -DskipTests package
```

## Run (scaffold)
```bash
java -cp target/anti-fraud-bot-0.1.0-SNAPSHOT.jar App
```

## Planned Features
- Telegram webhook/long-polling listener
- Evidence retrieval and cross-reference
- Risk scoring and response formatting
- Low-memory runtime profile
