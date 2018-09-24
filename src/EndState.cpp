
#include <sstream>
#include "EndState.hpp"
#include "IntroState.hpp"
#include "Game.hpp"
#include "Defs.hpp"

namespace Pong
{
    EndState::EndState( GameDataRef data):  _data( data)
    {

    }

    void EndState::Init()
    {
        this->_data->assets.LoadFont("font", FONT_FILE);
        winning_text.setFont(this->_data->assets.GetFont("font"));
        losing_text.setFont(this->_data->assets.GetFont("font"));
        replay_text.setFont(this->_data->assets.GetFont("font"));
        quit_text.setFont(this->_data->assets.GetFont("font"));

        winning_text.setFont(this->_data->assets.GetFont("font"));
        winning_text.setString("You Won!");
        winning_text.setCharacterSize(100);
        winning_text.setFillColor(sf::Color::White);
        winning_text.setPosition(SCREEN_WIDTH/4, SCREEN_HEIGHT/5);

        replay_text.setFont(this->_data->assets.GetFont("font"));
        replay_text.setString("Replay Game");
        replay_text.setCharacterSize(50);
        replay_text.setFillColor(sf::Color::White);
        replay_text.setPosition(SCREEN_WIDTH/3, SCREEN_HEIGHT/2.5);

        quit_text.setFont(this->_data->assets.GetFont("font"));
        quit_text.setString("Quit Game");
        quit_text.setCharacterSize(50);
        quit_text.setFillColor(sf::Color::White);
        quit_text.setPosition(SCREEN_WIDTH/3, SCREEN_HEIGHT/1.5);


    }

    void EndState::HandleInput()
    {
        sf::Event Event; 

        while ( this-> _data->window.pollEvent( Event))
        {
            if ( sf::Event::Closed == Event.type){
                this->_data->window.close( );
            }

            if ( this->_data->inputs.IsTextClicked(this->replay_text, sf::Mouse::Left, this->_data->window))
            {
                this->clock.restart();
                int player1_points = 0; 
                int ai_points = 0;
                this->_data->machine.AddState(StateRef ( new IntroState (_data)), true );
            }

            if ( this->_data->inputs.IsTextClicked(this->quit_text, sf::Mouse::Left, this->_data->window))
            {
                this->_data->window.close( );
            }
        }
    }
    void EndState::Update(float dt)
    {

    }
    void EndState::Draw(float dt)
    {
        this->_data->window.clear( sf::Color::Red);

         //draw objects 
        this->_data->window.draw( this->winning_text);
        this->_data->window.draw( this->replay_text);
        this->_data->window.draw( this->quit_text);

        this->_data->window.display( );
    }

}