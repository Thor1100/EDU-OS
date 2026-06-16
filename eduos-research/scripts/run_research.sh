#!/bin/bash

cd ~/EDU-OS/eduos-research

echo "===================================="
echo "Research Iteration Started"
echo "$(date)"
echo "===================================="

PROMPT=$(cat prompts/research_iteration.md)

fcc-claude -p "$PROMPT" >> logs/research.log 2>> logs/error.log

echo "===================================="
echo "Research Iteration Finished"
echo "$(date)"
echo "===================================="

