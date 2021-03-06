#include "InputManager.hpp"


namespace Pong
{
    bool InputManager::IsObjectClicked( sf::Sprite object, sf::Mouse::Button button, sf::RenderWindow &window)
    {
        if ( sf::Mouse::isButtonPressed ( button))
        {
            sf::IntRect objectRect ( object.getPosition().x, object.getPosition().y, object.getGlobalBounds().width, object.getGlobalBounds().height);

            //check for collusion 
            if (objectRect.contains (sf::Mouse::getPosition(window)))
            {
                return true;
            }
        }

        return false; //event has not occured 
    }

    bool InputManager::IsTextClicked( sf::Text text, sf::Mouse::Button button, sf::RenderWindow &window)
    {
        if ( sf::Mouse::isButtonPressed ( button))
        {
            sf::IntRect objectRect ( text.getPosition().x, text.getPosition().y, text.getGlobalBounds().width, text.getGlobalBounds().height);

            //check for collusion 
            if (objectRect.contains (sf::Mouse::getPosition(window)))
            {
                return true;
            }
        }

        return false; //event has not occured 
    }

    sf::Vector2i InputManager::GetMousePosition( sf::RenderWindow &window)
    {
        return sf::Mouse::getPosition( window);
    }
 

} 
