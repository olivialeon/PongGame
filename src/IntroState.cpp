#include <sstream>
#include "IntroState.hpp"
#include "Defs.hpp"
#include "EndState.hpp"

#include <iostream>
#include <cmath>


namespace Pong 
{
    float speed = BALL_SPEED;
    float direction = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/10.0)); 
    int player1_points = 0; 
    int ai_points = 0;

    IntroState::IntroState( GameDataRef data) : _data( data)
    {
    }

    void IntroState::Init( )
    {

        gameState = STATE_PLAYING;
        turn = PLAYER_PIECE;

        this->_data->assets.LoadFont("font", FONT_FILE);

		this->_data->assets.LoadTexture("ball", BALL);
        this->_data->assets.LoadTexture("player paddle", PLAYER_1_PADDLE);
        this->_data->assets.LoadTexture("ai paddle", AI_PADDLE);

        player_point_text.setFont(this->_data->assets.GetFont("font"));
        player_point_text.setString("0");
        player_point_text.setCharacterSize(100);
        player_point_text.setFillColor(sf::Color::White);
        player_point_text.setPosition(SCREEN_WIDTH/2.45, 0);

        ai_point_text.setFont(this->_data->assets.GetFont("font"));
        ai_point_text.setString("0");
        ai_point_text.setCharacterSize(100);
        ai_point_text.setFillColor(sf::Color::White);
        ai_point_text.setPosition(SCREEN_WIDTH/1.7, -1);

		_ball.setTexture(this->_data->assets.GetTexture("ball"));
		_player1.setTexture(this->_data->assets.GetTexture("player paddle"));
        _player2.setTexture(this->_data->assets.GetTexture("ai paddle"));

		_ball.setPosition( (SCREEN_WIDTH/ 2) - (this->_ball.getGlobalBounds().width/2),(SCREEN_HEIGHT/ 2) -(this->_ball.getGlobalBounds().height/2));
        _player1.setPosition( (SCREEN_WIDTH/6)-(this->_player2.getGlobalBounds().width/1.1),(SCREEN_HEIGHT/2)-(this->_player2.getGlobalBounds().height/.8) );
        _player2.setPosition( (SCREEN_WIDTH) - (this->_player2.getGlobalBounds().width/1),(SCREEN_HEIGHT/2) -(this->_player2.getGlobalBounds().height/.8));
	}

    void IntroState::HandleInput( )
    {
        sf::Event Event; 

        while ( this-> _data->window.pollEvent( Event))
        {
            if ( sf::Event::Closed == Event.type){
                this->_data->window.close( );
            }

            if ( sf::Event::KeyPressed == Event.type)
            {
                std::cout << "Processing Key Pressed" << std::endl;
                this-> MovePaddle(Event);
            }
        }
    }

    void IntroState::Update( float dt){
        if (this->_clock.getElapsedTime().asSeconds() > INTRO_STATE_SHOW)
        {
            this->MoveBallAround();
        }
    }
    void IntroState::MoveBallAround( ){

        //turn = PLAYER_PIECE;

        if (gameState == STATE_PLAYING){

            _ball.move(speed, direction);
            this->AIMovesPaddle();
            this->CheckForCollision();

            //right wall
            if (_ball.getPosition().x  > SCREEN_WIDTH - _ball.getGlobalBounds().width)
            {
                _ball.setPosition((SCREEN_WIDTH/ 2)- _ball.getGlobalBounds().width ,SCREEN_HEIGHT - _ball.getGlobalBounds().width);
                direction = -direction;
                turn = PLAYER_PIECE;
                int pos = _ball.getPosition().x;
                int pos2 = _ball.getPosition().y;
                std::cout << pos << std::endl;
                std::cout << pos2 << std::endl;
                this->GivePoints(turn);
            }

            //left wall
            if (_ball.getPosition().x  < 0)
            {
                _ball.setPosition((SCREEN_WIDTH/ 2)- _ball.getGlobalBounds().width ,SCREEN_HEIGHT - _ball.getGlobalBounds().width);
                turn = AI_PIECE;
                int pos = _ball.getPosition().x;
                int pos2 = _ball.getPosition().y;
                std::cout << pos << std::endl;
                std::cout << pos2 << std::endl;
                this->GivePoints(turn);
            }
            
            //bottom wall
            if (_ball.getPosition().y  > SCREEN_HEIGHT - _ball.getGlobalBounds().height)
            {
                direction = -direction;
            }
            //top wall
            if (_ball.getPosition().y  < 0)
            {
                direction = -direction;
            }

        }
    }

    void IntroState::AIMovesPaddle()
    {
        //move down
        if (_player1.getPosition().y  < SCREEN_HEIGHT - _player1.getGlobalBounds().height)
        {
            if (_ball.getPosition().y > _player2.getPosition().y + _player2.getGlobalBounds().height)
            {
                _player2.move(0.0f, 20.0f);
            }
        }

        //move up 
        if (_player2.getPosition().y > 0)
        {
            if ( _ball.getPosition().y < _player2.getPosition().y)
            {
                _player2.move(0.0f, -20.0f);
            }   
        }
    }

    void IntroState::MovePaddle(sf::Event Event)
    {
        if (Event.key.code == sf::Keyboard::Down)
        {
          if (_player1.getPosition().y  < SCREEN_HEIGHT - _player1.getGlobalBounds().height)
            {
                _player1.move(0.0f, 20.0f);
            }
        }

        if (Event.key.code == sf::Keyboard::Up)
         {
             if (_player1.getPosition().y  > 0)
             {
                 _player1.move(0.0f, -20.0f);
             }
         }
    }


    void IntroState::CheckForCollision()
    {
        //left paddle 
        if (_ball.getPosition().x  <=  _player1.getPosition().x + _player1.getGlobalBounds().width 
            && _ball.getPosition().y  <=  _player1.getPosition().y + _player1.getGlobalBounds().height
            && _ball.getPosition().y  >=  _player1.getPosition().y)
        {
            std::cout <<"Collision"<< std::endl;
            speed = -speed;
            turn = PLAYER_PIECE;
            direction = - static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/10.0));
        }

        //right paddle
        if (_ball.getPosition().x + _ball.getGlobalBounds().width >= _player2.getPosition().x  && 
        _ball.getPosition().y   >= _player2.getPosition().y   &&
        _ball.getPosition().y <=  _player2.getPosition().y + _player2.getGlobalBounds().height )
        {
            std::cout <<"Collision"<< std::endl;
            speed = -speed;
            turn = AI_PIECE;
            direction = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/10.0));

        }
    }

    void IntroState::GivePoints(int turn)
    {

        if ( turn == PLAYER_PIECE){
            player1_points += 1;
            player_point_text.setString(std::to_string(player1_points));
        }

        else if (turn == AI_PIECE)
        {
            ai_points += 1;
            ai_point_text.setString(std::to_string(ai_points));
        }
        this->CheckforPlayerWinner(player1_points, ai_points);
    }

    void IntroState::CheckforPlayerWinner(int pp,  int ap)
    {
        if (pp == 11){
            this->_data->machine.AddState( StateRef (new EndState(_data)), true);
        }
        if (ap == 11){
            this->_data->machine.AddState( StateRef (new EndState(_data)), true);
        }
    }
    void IntroState::Draw( float dt)
    {
        this->_data->window.clear( sf::Color::Blue);

         //draw objects 
        this->_data->window.draw( this->player_point_text);
        this->_data->window.draw( this->_ball );
		this->_data->window.draw( this->_player1);
        this->_data->window.draw( this->_player2);
        this->_data->window.draw( this->player_point_text);
        this->_data->window.draw( this->ai_point_text);

        this->_data->window.display( );
    }

}
