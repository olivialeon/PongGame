#pragma once 
#include <SFML/Graphics.hpp>

#define SCREEN_WIDTH 800
#define SCREEN_HEIGHT 600

#define INTRO_STATE_SHOW .5

#define PLAYER_1_PADDLE "Resources/PongPaddle.png"
#define AI_PADDLE  "Resources/PongPaddle.png"
#define PLAY_BUTTON "Resources/PlayButton.png"
#define BALL "Resources/Ball.png"
#define PONG_TITLE "Resources/Title.png"
#define FONT_FILE "Resources/fonts/PONG.TTF"

#define PLAYER_PIECE 1
#define AI_PIECE 2

#define STATE_PLAYING 99
#define STATE_PAUSED 98
#define STATE_WON 97
#define STATE_LOSE 96
#define STATE_DRAW 95
#define STATE_AI_PLAYING 94
#define STATE_PLAYER_PLAYING 93

#define BALL_SPEED 4.0;