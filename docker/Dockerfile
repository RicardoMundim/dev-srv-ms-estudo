FROM nexusrepository.bradesco.com.br:8500/redhat-openjdk-18/openjdk18-openshift:1.2-6

USER root

EXPOSE 8080

RUN mkdir -p /mnt/data/suportedbdc_logs/cloud/dev-srv-ms-estudo
RUN mkdir -p /mnt/data/suportedbdc_apl/cloud/dev-srv-ms-estudo
RUN ln -Tfs /mnt/data/suportedbdc_apl /suportedbdc_apl
RUN ln -Tfs /mnt/data/suportedbdc_logs /suportedbdc_logs

COPY target/dev-srv-ms-estudo-0.0.1.jar dev-srv-ms-estudo-0.0.1.jar

ENTRYPOINT ["java","-jar","dev-srv-ms-estudo-0.0.1.jar"]