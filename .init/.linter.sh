#!/bin/bash
cd /home/kavia/workspace/code-generation/quality-assurance-fundamentals-presentation-195336-195345/slidev_frontend
npm run lint
ESLINT_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ]; then
  exit 1
fi

