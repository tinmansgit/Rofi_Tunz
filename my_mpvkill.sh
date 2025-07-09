#!/usr/bin/env bash

ps aux | pgrep mpv | xargs -I {} kill {}

