#pragma once
#include "paddle.h"
#include <SFML/Graphics.hpp>

struct Ball
{
    sf::CircleShape ball;
    sf::Texture texture;
    sf::Sprite sprite;
    sf::Vector2f position;
    sf::Vector2f speed = {100, 100};
};

void updateBall(Ball &ball, Paddle &paddle, float deltaTime, unsigned WINDOW_WIDTH, unsigned WINDOW_HEIGHT, unsigned BALL_SIZE);
void initializeBall(Ball &ball);