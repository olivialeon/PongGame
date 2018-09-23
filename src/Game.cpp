#include "Game.hpp"
#include "IntroState.hpp"


namespace Pong 
{
    Game::Game( int width, int height, std::string title)
    {
        _data->window.create( sf::VideoMode(width, height), title, sf::Style::Close | sf::Style::Titlebar);

        _data->machine.AddState( StateRef( new IntroState( this->_data)));

        this->Run( );
    }

    void Game::Run( )
    {
        float newTime, frameTime, interpolation; 

        float currentTime = this->_clock.getElapsedTime().asSeconds();
        float accumulator = 0.0f;

        while ( this->_data->window.isOpen())
        {
            this->_data->machine.ProcessStateChanges( );

            newTime = this->_clock.getElapsedTime().asSeconds();
            frameTime = newTime - currentTime;

            if ( frameTime > 0.25f)
            {
                frameTime = 0.25f;
            }

            currentTime = newTime; 
            accumulator += frameTime;

            while ( accumulator >= dt)
            {
                this->_data->machine.GetActiveStates( )->HandleInput( );
                this ->_data->machine.GetActiveStates( )->Update(dt);

                accumulator -= dt;
            }

            interpolation = accumulator / dt; 
            this->_data->machine.GetActiveStates( )->Draw(interpolation);
        }
    }
}
