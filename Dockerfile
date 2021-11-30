FROM quay.io/keycloak/keycloak

# PrivacyIDEA Provider integration
ENV PRIVACYIDEA_PROVIDER_VERSION=1.0.0
RUN curl -L https://github.com/privacyidea/keycloak-provider/releases/download/v${PRIVACYIDEA_PROVIDER_VERSION}/PrivacyIDEA-Provider.jar --output /opt/jboss/keycloak/standalone/deployments/PrivacyIDEA-Provider.jar

# Joomla UserProvider integration
ENV KEYCLOAK_JOOMLA_VERSION=00.01.05
RUN curl -L https://github.com/altima/keycloak-joomla-user-storage/releases/download/v${KEYCLOAK_JOOMLA_VERSION}/keycloak-joomla-user-storage-all.jar --output /opt/jboss/keycloak/standalone/deployments/keycloak-joomla-user-storage-all.jar