# Y42 Demo Template (Snowflake)

This repository contains the public template space for the Space Fuel Shop demo. You can clone the repository to set up a new demo space.

## About the dataset
As you may have gathered from Y42's name, we're fans of Hitchhiker's Guide to the Galaxy. This demo, therefore, takes you to outer space. We're running an intergalactic space fuel shop that sells everything needed to power your spaceship.

## How to set up

1. Fork this repository.
2. Follow the general instructions in [Y42's Getting Started Guide](https://docs.y42.dev/docs/getting-started/create-a-space) for `Basic info` and `Connect data warehouse`.
3. In the configure Git section, select `Use your own GitHub repository`.
4. Click `Authorize repositories in GitHub` and follow the instructions.

### Secrets

Because the secrets are not included in the Git repo, you must [manually configure these](https://docs.y42.dev/docs/spaces/settings/secrets) to ensure the space can connect to its sources.

- Airbyte/Postgres secret:
  - **Secret name**: `Postgres Space Fuel Shop`
  - **Host IP:** `35.198.165.208`
  - **Port:** `5432` (default)
  - **Database name:** `y42-demo-data`
  - **User:** `public_reader`
  - **Password:** `dontpanic`
- Custom secret 1:
  - **Secret name:** `exoplanet_user`
  - **Value:** `loremipsum` (dummy secret)
- Custom secret 2:
  - **Secret name:** `exoplanet_pass`
  - **Value:** `loremipsum` (dummy secret)
