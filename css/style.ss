body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    line-height: 1.6;
    color: #333;
}

header {
    background: #1a1a2e;
    color: #fff;
    padding: 1rem;
}

nav ul {
    list-style: none;
    padding: 0;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

nav li {
    margin: 0 1rem;
}

nav a {
    color: #fff;
    text-decoration: none;
}

nav a:hover {
    text-decoration: underline;
}

main {
    padding: 2rem;
    min-height: 70vh;
}

.profile-photo {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 1rem;
}

#hero, #about, #projects, #game {
    max-width: 900px;
    margin: 0 auto;
    background: white;
    padding: 2rem;
    border-radius: 15px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
}

#hero {
    text-align: center;
}

.project {
    margin-bottom: 2rem;
    border: 1px solid #ddd;
    padding: 1rem;
    border-radius: 8px;
}

.project img {
    width: 100%;
    max-width: 300px;
    height: auto;
}

.game-buttons {
    display: flex;
    justify-content: center;
    gap: 1rem;
    margin: 1.5rem 0;
}

.game-buttons button {
    background: #1a1a2e;
    color: #fff;
    padding: 1rem 1.5rem;
    border-radius: 8px;
    cursor: pointer;
    font-size: 1rem;
}

.game-result {
    max-width: 560px;
    margin: 0 auto 1rem auto;
    padding: 1rem;
    border: 1px solid #ddd;
    border-radius: 8px;
}

.scoreboard {
    display: flex;
    justify-content: center;
    gap: 2rem;
    margin-bottom: 1rem;
}

.reset-button {
    background: #dc3545;
    color: #fff;
    border: none;
    padding: 0.8rem 1.4rem;
    border-radius: 8px;
    cursor: pointer;
}

footer {
    background: #1a1a2e;
    color: #fff;
    text-align: center;
    padding: 1rem;
    margin-top: 2rem;
}

.icon {
    width: 35px;
    height: 35px;
    margin: 0 0.5rem;
}

@media (max-width: 768px) {
    nav ul {
        flex-direction: column;
        align-items: center;
    }
    main {
        padding: 1rem;
    }
}
