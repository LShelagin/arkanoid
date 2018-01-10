#include "ball.h"

void initializeBall(Ball &ball)
{
    ball.texture.loadFromFile("images/ball.png");
    ball.sprite.setTexture(ball.texture);
    ball.sprite.setPosition(300, 400);
}

void updateBallAndBlocks(Ball &ball, Paddle &paddle, sf::Sprite (&blocks)[100], float deltaTime, const unsigned WINDOW_WIDTH, const unsigned WINDOW_HEIGHT, const unsigned BALL_RADIUS)
{
    ball.position = ball.sprite.getPosition();

    if (sf::FloatRect(ball.position.x, ball.position.y, 2 * BALL_RADIUS, 2 * BALL_RADIUS).intersects(paddle.sprite.getGlobalBounds()))
    {
        ball.speed.y = -ball.speed.y - (rand() % 21 - 10);
    }
    for (int i = 0; i < 99; i++)
    {
        if (sf::FloatRect(ball.position.x + BALL_RADIUS, ball.position.y + BALL_RADIUS, 2 * BALL_RADIUS, 2 * BALL_RADIUS).intersects(blocks[i].getGlobalBounds()))
        {
            sf::Sprite none;
            blocks[i] = none;
            ball.speed.y = -ball.speed.y;

            for (int j = i; j < 99; j++)
            {
                if (sf::FloatRect(ball.position.x + BALL_RADIUS, ball.position.y + BALL_RADIUS, 2 * BALL_RADIUS, 2 * BALL_RADIUS).intersects(blocks[j].getGlobalBounds()))
                {
                    sf::Sprite none;
                    blocks[j] = none;
                    ball.speed.x = -ball.speed.x;
                }
            }
        }
    }

    if ((ball.position.x <= 0) || ((ball.position.x + 10) >= WINDOW_WIDTH))
    {
        ball.speed.x = -ball.speed.x;
    }
    if (ball.position.y <= 0)
    {
        ball.speed.y = -ball.speed.y;
    }
    ball.position += ball.speed * deltaTime;
    ball.sprite.setPosition(ball.position);
}