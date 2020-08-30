FROM docker.pkg.github.com/bitdecaygames/limebuild/limebuild:latest
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]