#pragma once
#include "paddle.h"
#include "constance.h"
#include <SFML/Graphics.hpp>

struct Ball
{
    sf::CircleShape ball;
    sf::Texture texture;
    sf::Sprite sprite;
    sf::Vector2f position;
    sf::Vector2f speed = {150, 150};
};

void updateBallAndBlocks(Ball &ball, Paddle &paddle, sf::Sprite (&blocks)[100], float deltaTime, unsigned WINDOW_WIDTH, unsigned WINDOW_HEIGHT, unsigned BALL_SIZE);
void initializeBall(Ball &ball);