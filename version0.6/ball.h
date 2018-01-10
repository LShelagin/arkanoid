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
    sf::Vector2f speed = {-200, 200};

    float left = ball.getPosition().x - BALL_RADIUS;
    float right = ball.getPosition().x + BALL_RADIUS;
    float top = ball.getPosition().y - BALL_RADIUS;
    float bottom = ball.getPosition().y + BALL_RADIUS;
};

void updateBallAndBlocks(Ball &ball, Paddle &paddle, float deltaTime, unsigned WINDOW_WIDTH, unsigned WINDOW_HEIGHT, unsigned BALL_SIZE);
void initializeBall(Ball &ball);