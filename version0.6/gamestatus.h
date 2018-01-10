#pragma once
#include "background.h"
#include "constance.h"
#include "ball.h"
#include <SFML/Graphics.hpp>

enum class GameStatus
{
    Playing,
    PlayerLosed,
    PlayerWon,
};

struct checkGameStatus
{
    sf::Font font;
    GameStatus gameStatus;
};

void lose(sf::RenderWindow &window, sf::Text loseLabel, checkGameStatus &status, Background &background);
void win(sf::RenderWindow &window, sf::Text wonLabel, checkGameStatus &status, Background &background);
