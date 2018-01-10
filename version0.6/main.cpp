#include "paddle.h"
#include "ball.h"
#include "background.h"
#include "constance.h"
#include "gamestatus.h"
#include "gamescene.h"
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

void update(Background background, sf::RenderWindow &window, sf::Clock &clock, Paddle &paddle, Ball &ball, sf::Sprite (&blocks)[100], sf::Text loseLabel, sf::Text wonLabel, checkGameStatus &status)
{
    updateAndRedraw(background, window, clock, paddle, ball, blocks, loseLabel, wonLabel, status);
}

int main()
{

    sf::Text loseLabel;
    sf::Text wonLabel;

    sf::RenderWindow window;
    createWindow(window);

    Paddle paddle;
    initializePaddle(paddle);

    Ball ball;
    sf::Sprite blocks[100];
    initializeBall(ball);

    Background background;
    initBackground(background);

    checkGameStatus status;

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
        update(background, window, clock, paddle, ball, blocks, loseLabel, wonLabel, status);
    }

    return 0;
}