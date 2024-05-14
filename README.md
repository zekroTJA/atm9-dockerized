# All the Mods 9 - Server Docker Image

An image to host an [All the Mods 9](https://www.curseforge.com/minecraft/modpacks/all-the-mods-9) server using Docker.

> [!IMPORTANT]
> This server image contains a [patched version](https://github.com/Skillkiller/pipez) of the [pipez](https://github.com/henkelmax/pipez) mod, which fixes some performance issues which occur in combination with other mods like Botany Pots. Please use this mod in this image with caution or remove the patch before deploying the image.

This image is based on the [minebase image](https://github.com/zekroTJA/minebase). For further information on how to use the image with the RCON CLI and automatic backups, please refer to the repositories documentation.

You can also use the provided [`docker-compose.yml`](./docker-compose.yml) to kickstart your deployment.