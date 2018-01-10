#include "paddle.h"
#include "ball.h"
#include "background.h"
#include "constance.h"
#include <SFML/Graphics.hpp>

void createWindow(sf::RenderWindow &window)
{
    sf::ContextSettings settings;
    settings.antialiasingLevel = ANTIALIASING_LEVEL;
    window.create(
        sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT),
        "Arkanoid Game Clone", sf::Style::Default, settings);
    window.setFramerateLimit(MAX_FPS);
}

void handleEvents(sf::RenderWindow &window, Paddle &paddle)
{
    sf::Event event;
    while (window.pollEvent(event))
    {
        if (event.type == sf::Event::Closed)
        {
            window.close();
        }

        else if (event.type == sf::Event::KeyPressed)
        {
            handlePaddleKeyPress(event.key, paddle);
        }
        else if (event.type == sf::Event::KeyReleased)
        {
            handlePaddleKeyRelease(event.key, paddle);
        }
    }
}

void update(sf::Clock &clock, Paddle &paddle, Ball &ball, sf::Sprite (&blocks)[100])
{
    const float elapsedTime = clock.getElapsedTime().asSeconds();
    const float deltaTime = clock.restart().asSeconds() / 10;
    clock.restart();
    updatePaddle(paddle, elapsedTime);
    for (int i = 0; i < 10; i++)
    {
        updateBallAndBlocks(ball, paddle, blocks, deltaTime, WINDOW_WIDTH, WINDOW_HEIGHT, BALL_RADIUS);
    }
}

void render(sf::RenderWindow &window, Paddle &paddle, Ball &ball, Background &background, sf::Sprite (&blocks)[100])
{
    window.clear();
    window.draw(background.sprite);
    window.draw(ball.sprite);
    window.draw(paddle.sprite);
    for (int i = 0; i < 99; i++)
    {
        window.draw(blocks[i]);
    }
    window.display();
}

int main()
{

    sf::RenderWindow window;
    createWindow(window);

    Paddle paddle;
    initializePaddle(paddle);

    Ball ball;
    sf::Sprite blocks[100];
    initializeBall(ball);

    Background background;
    initBackground(background);

    sf::Texture blockTexture;
    blockTexture.loadFromFile("images/block01.png");
    int n = 0;
    for (int i = 0; i <= 8; i++)
    {
        for (int j = 0; j <= 9; j++)
        {
            blocks[n].setTexture(blockTexture);
            blocks[n].setPosition(i * BLOCK_WIDTH + 200, j * BLOCK_HEIGHT + 50);
            n++;
        }
    }

    sf::Clock clock;
    while (window.isOpen())
    {
        handleEvents(window, paddle);
        update(clock, paddle, ball, blocks);
        render(window, paddle, ball, background, blocks);
    }

    return 0;
}