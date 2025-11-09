#!/bin/bash

# Render Build Script for ProofPals
echo "🚀 Starting ProofPals build process..."

# Build frontend
echo "📦 Building frontend..."
cd proofpals-frontend
npm ci
npm run build
cd ..

# Install backend dependencies
echo "🐍 Installing Python dependencies..."
cd backend
pip install -r requirements.txt
cd ..

# Copy frontend build to backend static folder
echo "📁 Setting up static files..."
mkdir -p backend/static
cp -r proofpals-frontend/dist/* backend/static/

echo "✅ Build completed successfully!"
