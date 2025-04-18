# Workflow Wizard

A real-time web application for monitoring user attention, emotion, and engagement metrics through webcam analysis.

## Features

- Real-time face tracking
- Emotion analysis
- Heart rate estimation
- Eye tracking
- WebRTC for real-time communication
- Modern UI with Tailwind CSS and Shadcn components

## Tech Stack

- **Frontend**: React, TypeScript, Tailwind CSS, Shadcn UI
- **Backend**: Node.js, Express, WebSockets
- **Database**: PostgreSQL (NeonDB)
- **Real-time**: WebRTC, WebSockets

## Deployment on Railway

### Option 1: Deploy via GitHub

1. Fork this repository to your GitHub account
2. Sign up or log in to [Railway](https://railway.app/)
3. Create a new project and select "Deploy from GitHub"
4. Choose this repository
5. Click "Deploy Now"
6. Railway will automatically set up and deploy your application

### Option 2: Deploy via CLI

1. Install Railway CLI: `npm i -g @railway/cli`
2. Log in: `railway login`
3. Initialize project: `railway init`
4. Link to this repository: `railway link`
5. Deploy: `railway up`

### Environment Variables

The following environment variables are required:

- `DATABASE_URL`: PostgreSQL connection string
- `RAILWAY_STATIC_URL`: Set automatically by Railway
- `PORT`: Default is 10000

## Local Development

1. Clone the repository
2. Install dependencies: `npm install`
3. Create a `.env.development` file with your database URL
4. Run the development server: `npm run dev`

## License

MIT
