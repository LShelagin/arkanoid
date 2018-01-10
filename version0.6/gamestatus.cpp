#include "gamestatus.h"

void lose(sf::RenderWindow &window, sf::Text loseLabel, checkGameStatus &status, Background &background)
{
    window.clear();
    status.font.loadFromFile("./arial.ttf");
    loseLabel.setFont(status.font);
    loseLabel.setString("You lose");
    loseLabel.setPosition(0.25 * WINDOW_WIDTH, 0.25 * WINDOW_HEIGHT);
    loseLabel.setCharacterSize(CHARACTER_SIZE);
    loseLabel.setFillColor(sf::Color::White);
    window.draw(background.sprite);
    window.draw(loseLabel);
}

void win(sf::RenderWindow &window, sf::Text wonLabel, checkGameStatus &status, Background &background)
{
    window.clear();
    status.font.loadFromFile("./arial.ttf");
    wonLabel.setFont(status.font);
    wonLabel.setString("You win");
    wonLabel.setPosition(0.25 * WINDOW_WIDTH, 0.25 * WINDOW_HEIGHT);
    wonLabel.setCharacterSize(CHARACTER_SIZE);
    wonLabel.setFillColor(sf::Color::White);
    window.draw(background.sprite);
    window.draw(wonLabel);
}
