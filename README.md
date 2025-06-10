# Solar Review Brasil Backend

This application powers the backend for Solar Review Brasil. It is a Ruby on Rails
project that uses ActiveAdmin for administration and ships with a minimal setup
script. Follow the steps below to get a development environment running.

## Prerequisites

* **Ruby**: 3.2.2 (see `.ruby-version`)
* **Bundler**: ensure you have bundler installed (`gem install bundler`)

## Setup

1. **Install dependencies**

   ```bash
   bundle install
   ```

2. **Prepare the database**

   This will create the SQLite database and run any pending migrations:

   ```bash
   bin/rails db:prepare
   ```

3. **Seed the database**

   To create an initial admin user and some example records, run:

   ```bash
   bin/rails db:seed
   ```

   The seed file creates an admin account with the credentials:

   * **Email**: `admin@example.com`
   * **Password**: `password`

4. **Start the server**

   You can use the provided development script:

   ```bash
   bin/dev
   ```

   or start Rails directly:

   ```bash
   bin/rails server
   ```

5. **Access ActiveAdmin**

   Once the server is running, visit `http://localhost:3000/admin` and log in with
   the seeded admin credentials to access the administration panel.

