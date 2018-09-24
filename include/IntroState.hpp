#pragma once

#include <SFML/Graphics.hpp>
#include "State.hpp"
#include "Game.hpp"

namespace Pong
{
    class IntroState : public State
    {
        public:
            IntroState( GameDataRef data);

            void Init( );

            void HandleInput();
            void Update( float dt);
            void Draw( float dt);

        private: 

            void MovePaddle(sf::Event Event );
            void MoveBallAround( );
            void AIMovesPaddle();
            void CheckForCollision();
            void CheckforPlayerWinner(int player_points, int ai_points);
            void GivePoints(int turn);

            GameDataRef _data; 
            sf::Clock _clock; 
            sf::Font font;
            sf::Text player_point_text;
            sf::Text ai_point_text;

            sf::Sprite _playButton;
            sf::Sprite _title;

            sf::Sprite _ball;
		    sf::Sprite _player1;
            sf::Sprite _player2;

		    int turn;
		    int gameState;

    };
}