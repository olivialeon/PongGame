#pragma once

#include <SFML/Graphics.hpp>
#include "State.hpp"
#include "Game.hpp"

namespace Pong
{
    class EndState : public State
    {
        public:
            EndState( GameDataRef data);

            void Init( );

            void HandleInput();
            void Update( float dt);
            void Draw( float dt);

        private: 

            GameDataRef _data; 
            sf::Clock clock;
            sf::Font font;
            sf::Text winning_text;
            sf::Text losing_text;

            sf::Text replay_text;
            sf::Text quit_text;

		    int turn;
		    int gameState;
  

    };
}