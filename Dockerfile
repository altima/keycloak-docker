FROM quay.io/keycloak/keycloak

# PrivacyIDEA Provider integration
ENV PRIVACYIDEA_PROVIDER_VERSION=1.0.0
ADD https://github.com/privacyidea/keycloak-provider/releases/download/v${PRIVACYIDEA_PROVIDER_VERSION}/PrivacyIDEA-Provider.jar /opt/jboss/keycloak/standalone/deployments/PrivacyIDEA-Provider.jar