#include "background.h"

void initBackground(Background &background)
{
    background.texture.loadFromFile("images/background.png");
    background.sprite.setTexture(background.texture);
    background.sprite.scale(sf::Vector2f(4.f, 2.6f));
}