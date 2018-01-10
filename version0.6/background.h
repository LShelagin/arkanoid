#pragma once
#include <SFML/Graphics.hpp>

struct Background
{
    sf::Texture texture;
    sf::Sprite sprite;
};

void initBackground(Background &background);