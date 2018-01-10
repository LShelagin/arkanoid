#include "paddle.h"
#include <SFML/Graphics.hpp>

constexpr unsigned ANTIALIASING_LEVEL = 8;
constexpr unsigned WINDOW_WIDTH = 800;
constexpr unsigned WINDOW_HEIGHT = 600;
constexpr unsigned MAX_FPS = 60;

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

void update(sf::Clock &clock, Paddle &paddle)
{
    const float elapsedTime = clock.getElapsedTime().asSeconds();
    clock.restart();
    updatePaddle(paddle, elapsedTime);
}

void render(sf::RenderWindow &window, const Paddle &paddle)
{
    window.clear();
    window.draw(paddle.sprite);
    window.display();
}

int main(int, char *[])
{
    sf::RenderWindow window;
    createWindow(window);

    Paddle paddle;
    initializePaddle(paddle);

    sf::Clock clock;
    while (window.isOpen())
    {
        handleEvents(window, paddle);
        update(clock, paddle);
        render(window, paddle);
    }

    return 0;
}