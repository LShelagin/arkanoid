#include "paddle.h"

void initializePaddle(Paddle &paddle)
{
    paddle.direction = Direction::NONE;
    paddle.texture.loadFromFile("images/paddle.png");
    paddle.sprite.setTexture(paddle.texture);
    paddle.sprite.setPosition(300, 500);
}

void updatePaddle(Paddle &paddle, float elapsedTime)
{
    const float step = PADDLE_SPEED * elapsedTime;
    sf::Vector2f position = paddle.sprite.getPosition();
    switch (paddle.direction)
    {
    case Direction::LEFT:
        position.x -= step;
        break;
    case Direction::RIGHT:
        position.x += step;
        break;
    case Direction::NONE:
        break;
    }
    if (position.x <= 0)
    {
        position.x = 1;
    }
    if (position.x >= 713)
    {
        position.x = 713;
    }
    paddle.sprite.setPosition(position);
}

bool handlePaddleKeyPress(const sf::Event::KeyEvent &event, Paddle &paddle)
{
    bool handled = true;
    switch (event.code)
    {
    case sf::Keyboard::Up:
        paddle.direction = Direction::UP;
        break;
    case sf::Keyboard::Down:
        paddle.direction = Direction::DOWN;
        break;
    case sf::Keyboard::Left:
        paddle.direction = Direction::LEFT;
        break;
    case sf::Keyboard::Right:
        paddle.direction = Direction::RIGHT;
        break;
    default:
        handled = false;
        break;
    }
    return handled;
}

bool handlePaddleKeyRelease(const sf::Event::KeyEvent &event, Paddle &paddle)
{
    bool handled = true;
    switch (event.code)
    {
    case sf::Keyboard::Up:
        if (paddle.direction == Direction::UP)
        {
            paddle.direction = Direction::NONE;
        }
        break;
    case sf::Keyboard::Down:
        if (paddle.direction == Direction::DOWN)
        {
            paddle.direction = Direction::NONE;
        }
        break;
    case sf::Keyboard::Left:
        if (paddle.direction == Direction::LEFT)
        {
            paddle.direction = Direction::NONE;
        }
        break;
    case sf::Keyboard::Right:
        if (paddle.direction == Direction::RIGHT)
        {
            paddle.direction = Direction::NONE;
        }
        break;
    default:
        handled = false;
        break;
    }

    return handled;
}