# Budget team project repo

This repo contains code and documents for all aspects of the Budget team project.

Per the current recommended approach for organizing code in repos, Budget team will use two repos: team-budget and team-budget-frontend.

## Team Budget repos
- team-budget: repo for all code related to backend (Django, API) and data/database
- team-budget-frontend: repo for all code related to frontend (React/HTML/CSS/JS)

# Setting up local development

Clone, configure your virtual environment and install requirements:
```
git clone https://github.com/hackoregon/transportation-backend.git
cd transportation-backend
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt
```
Run the app server:
```
python3 budget_proj/manage.py runserver
```
Then launch http://127.0.0.1:8000 in your browser and you'll get a response from the Django app.
