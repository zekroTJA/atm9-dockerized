# All the Mods 9 - Server Docker Image

An image to host an [All the Mods 9](https://www.curseforge.com/minecraft/modpacks/all-the-mods-9) server using Docker.

> [!IMPORTANT]
> This server image contains a [patched version](https://github.com/henkelmax/pipez/pull/218) of the [pipez](https://github.com/henkelmax/pipez) mod, which comes with some very unhandy bugs and issues, but at least fixes the huge performance issues we had on our server instance. Please use this mod in this image with caution or remove the patch before deploying the image.

This image is based on the [minebase image](https://github.com/zekroTJA/minebase). For further information on how to use the image with the RCON CLI and automatic backups, please refer to the repositories documentation.

You can also use the provided [`docker-compose.yml`](./docker-compose.yml) to kickstart your deployment.