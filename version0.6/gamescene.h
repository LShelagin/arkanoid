#pragma once
#include "paddle.h"
#include "ball.h"
#include "background.h"
#include "constance.h"
#include "gamestatus.h"
#include <cmath>
#include <SFML/Graphics.hpp>

void updateAndRedraw(Background background, sf::RenderWindow &window, sf::Clock &clock, Paddle &paddle, Ball &ball, sf::Sprite (&blocks)[100], sf::Text loseLabel, sf::Text wonLabel, checkGameStatus &status);