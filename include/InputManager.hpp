#pragma once 
#include <SFML/Graphics.hpp>


namespace Pong 
{
    class InputManager
    { 
    public: 
        InputManager( ){}
        ~InputManager ( ){}

        bool IsObjectClicked( sf::Sprite object, sf::Mouse::Button button, sf::RenderWindow &window);

        bool IsTextClicked( sf::Text text, sf::Mouse::Button button, sf::RenderWindow &window);

        sf::Vector2i GetMousePosition( sf::RenderWindow &window);

        bool IsDownButtonPressed ( sf::Keyboard::Key key);
    };

}