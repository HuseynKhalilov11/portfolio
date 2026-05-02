document.addEventListener('DOMContentLoaded', function() {
    const choices = ['Rock', 'Paper', 'Scissors'];
    const buttons = document.querySelectorAll('[data-choice]');
    const playerChoiceEl = document.getElementById('player-choice');
    const computerChoiceEl = document.getElementById('computer-choice');
    const roundResultEl = document.getElementById('round-result');
    const playerScoreEl = document.getElementById('player-score');
    const computerScoreEl = document.getElementById('computer-score');
    const resetButton = document.getElementById('reset-button');

    let playerScore = 0;
    let computerScore = 0;

    function getComputerChoice() {
        const index = Math.floor(Math.random() * choices.length);
        return choices[index];
    }

    function getRoundOutcome(player, computer) {
        if (player === computer) return 'tie';
        if (
            (player === 'Rock' && computer === 'Scissors') ||
            (player === 'Paper' && computer === 'Rock') ||
            (player === 'Scissors' && computer === 'Paper')
        ) {
            return 'win';
        }
        return 'lose';
    }

    function updateScore() {
        playerScoreEl.textContent = playerScore;
        computerScoreEl.textContent = computerScore;
    }

    function playRound(playerChoice) {
        const computerChoice = getComputerChoice();
        const outcome = getRoundOutcome(playerChoice, computerChoice);

        playerChoiceEl.textContent = playerChoice;
        computerChoiceEl.textContent = computerChoice;

        if (outcome === 'win') {
            playerScore++;
            roundResultEl.textContent = 'You win!';
        } else if (outcome === 'lose') {
            computerScore++;
            roundResultEl.textContent = 'Computer wins!';
        } else {
            roundResultEl.textContent = 'Tie!';
        }
        updateScore();
    }

    buttons.forEach(button => {
        button.addEventListener('click', () => {
            playRound(button.getAttribute('data-choice'));
        });
    });

    resetButton.addEventListener('click', () => {
        playerScore = 0;
        computerScore = 0;
        updateScore();
        playerChoiceEl.textContent = '-';
        computerChoiceEl.textContent = '-';
        roundResultEl.textContent = 'Pick a move to start.';
    });
});
