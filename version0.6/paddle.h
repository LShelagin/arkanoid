#pragma once
#include "constance.h"
#include <SFML/Graphics.hpp>

enum struct Direction
{
    NONE,
    UP,
    DOWN,
    LEFT,
    RIGHT
};

struct Paddle
{
    Direction direction;
    sf::Texture texture;
    sf::Sprite sprite;
};

void updatePaddle(Paddle &paddle, float elapsedTime);
bool handlePaddleKeyPress(const sf::Event::KeyEvent &event, Paddle &paddle);
bool handlePaddleKeyRelease(const sf::Event::KeyEvent &event, Paddle &paddle);
void initializePaddle(Paddle &paddle);