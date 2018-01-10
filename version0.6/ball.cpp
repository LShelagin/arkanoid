#include "ball.h"

void initializeBall(Ball &ball)
{
    ball.texture.loadFromFile("images/ball.png");
    ball.sprite.setTexture(ball.texture);
    ball.sprite.setPosition(300, 400);
}

void updateBallAndBlocks(Ball &ball, Paddle &paddle, float deltaTime, unsigned WINDOW_WIDTH, unsigned WINDOW_HEIGHT, unsigned BALL_RADIUS)
{
    ball.position = ball.sprite.getPosition();

    if (sf::FloatRect(ball.position.x, ball.position.y, 2 * BALL_RADIUS, 2 * BALL_RADIUS).intersects(paddle.sprite.getGlobalBounds()))
    {
        ball.speed.y = -ball.speed.y;
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