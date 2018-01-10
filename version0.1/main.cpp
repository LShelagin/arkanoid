#include <SFML/Graphics.hpp>

const unsigned WINDOW_HEIGHT = 600;
const unsigned WINDOW_WIDTH = 800;
const unsigned ANTIALIASING_LEVEL = 8;
const unsigned MAX_FPS = 60;

void createWindow(sf::RenderWindow &window);
void initializePlatform(sf::RectangleShape &shape);
void pollEvents(sf::RenderWindow &window);
void update(sf::Clock &clock, sf::CircleShape &shape);
void render(sf::RenderWindow &window, sf::CircleShape &shape);

void createWindow(sf::RenderWindow &window)
{
    sf::ContextSettings settings;
    settings.antialiasingLevel = ANTIALIASING_LEVEL;
    window.create(
        sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT),
        "Arcanoid Game Clone", sf::Style::Default, settings);
    window.setFramerateLimit(MAX_FPS);
}

void initializePlatform(sf::RectangleShape &shape)
{
    shape.setFillColor(sf::Color(50, 100, 100));
    shape.setPosition(400, 500);
    shape.setSize({70, 10});
}

void pollEvents(sf::RenderWindow &window)
{
    sf::Event event;
    while (window.pollEvent(event))
    {
        if (event.type == sf::Event::Closed)
        {
            window.close();
        }
    }
}

void update(sf::Clock &clock, sf::RectangleShape &shape)
{
    const sf::Vector2f speed = {50, 0};

    const float elapsedSeconds = clock.restart().asSeconds();
    shape.setPosition(shape.getPosition() + speed * elapsedSeconds);
}

void render(sf::RenderWindow &window, sf::RectangleShape &shape)
{
    window.clear();
    window.draw(shape);
    window.display();
}

int main()
{
    sf::RenderWindow window;
    createWindow(window);

    sf::RectangleShape platform;
    initializePlatform(platform);

    sf::Clock clock;
    while (window.isOpen())
    {
        pollEvents(window);
        update(clock, platform);
        render(window, platform);
    }

    return 0;
}