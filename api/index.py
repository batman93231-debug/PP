# Vercel API Entry Point for ProofPals Backend
import sys
import os

# Add backend directory to Python path
backend_path = os.path.join(os.path.dirname(__file__), '..', 'backend')
sys.path.insert(0, backend_path)

# Import the FastAPI app from main.py
from main import app

# Vercel expects a handler function
def handler(request):
    return app(request)
