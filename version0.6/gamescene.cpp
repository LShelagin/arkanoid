#include "gamescene.h"

void updateAndRedraw(Background background, sf::RenderWindow &window, sf::Clock &clock, Paddle &paddle, Ball &ball, sf::Sprite (&blocks)[100], sf::Text loseLabel, sf::Text wonLabel, checkGameStatus &status)
{
    if (status.gameStatus == GameStatus::Playing)
    {
        const float elapsedTime = clock.getElapsedTime().asSeconds();
        const float deltaTime = clock.restart().asSeconds();
        clock.restart();
        updatePaddle(paddle, elapsedTime);

        updateBallAndBlocks(ball, paddle, deltaTime, WINDOW_WIDTH, WINDOW_HEIGHT, BALL_RADIUS);
        for (int i = 0; i < 100; i++)
            for (int j = 0; j < 100; j++)
            {
                if (sf::FloatRect(ball.position.x + BALL_RADIUS, ball.position.y + BALL_RADIUS, BALL_RADIUS, BALL_RADIUS).intersects(blocks[j].getGlobalBounds()))
                {
                    BLOCKS_COUNT += 1;
                    sf::Sprite none;
                    blocks[j] = none;

                    float distanceToLeft = ball.right - (blocks[j].getPosition().x - BLOCK_WIDTH / 2.f);
                    float distanceToRight = (blocks[j].getPosition().x + BLOCK_WIDTH / 2.f) - ball.left;
                    float distanceToTop = ball.bottom - (blocks[j].getPosition().y - BLOCK_HEIGHT);
                    float distanceToBottom = (blocks[j].getPosition().y + BLOCK_HEIGHT) - ball.top;

                    bool ballFromLeft(std::abs(distanceToLeft) <= std::abs(distanceToRight));
                    bool ballFromTop(std::abs(distanceToTop) <= std::abs(distanceToBottom));

                    float intersectsX = 0;
                    if (ballFromLeft)
                    {
                        intersectsX = distanceToLeft;
                    }
                    else
                    {
                        intersectsX = distanceToRight;
                    }
                    float intersectsY = 0;
                    if (ballFromTop)
                    {
                        intersectsY = distanceToTop;
                    }
                    else
                    {
                        intersectsY = distanceToBottom;
                    }

                    if (std::abs(intersectsX) < std::abs(intersectsY))
                    {
                        ball.speed.x = -ball.speed.x;
                    }
                    else
                    {
                        ball.speed.y = -ball.speed.y;
                    }
                }
            }
        window.clear();
        window.draw(background.sprite);
        window.draw(ball.sprite);
        window.draw(paddle.sprite);
        for (int i = 0; i < 99; i++)
        {
            window.draw(blocks[i]);
        }
        if (ball.position.y > WINDOW_HEIGHT)
        {
            lose(window, loseLabel, status, background);
            status.gameStatus = GameStatus::PlayerLosed;
        }
        if ((BLOCK_REMAINED - BLOCKS_COUNT) <= 0)
        {
            win(window, wonLabel, status, background);
            status.gameStatus = GameStatus::PlayerWon;
        }
        window.display();
    }
}