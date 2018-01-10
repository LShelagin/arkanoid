#include "ball.h"
#include "paddle.h"

void initializeBall(Ball &ball)
{
    ball.texture.loadFromFile("images/ball.png");
    ball.sprite.setTexture(ball.texture);
    ball.sprite.setPosition(300, 400);
}

void updateBall(Ball &ball, Paddle &paddle, float deltaTime, const unsigned WINDOW_WIDTH, const unsigned WINDOW_HEIGHT, const unsigned BALL_SIZE)
{
    ball.position = ball.sprite.getPosition();
    if (ball.position.x + 10 >= WINDOW_WIDTH)
    {
        ball.speed.x = -ball.speed.x;
    }
    if (ball.position.x <= 0)
    {
        ball.speed.x = -ball.speed.x;
    }
    if (ball.position.y <= 0)
    {
        ball.speed.y = -ball.speed.y;
    }
    if ((ball.position.x + 10 > paddle.sprite.getPosition().x) && (ball.position.x < (paddle.sprite.getPosition().x + 90)) && (ball.position.y + 10 >= 500))
    {
        ball.speed.y = -ball.speed.y;
    }
    ball.position += ball.speed * deltaTime;
    ball.sprite.setPosition(ball.position);
}