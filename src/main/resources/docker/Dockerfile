FROM nexusrepository.bradesco.com.br:8500/redhat-openjdk-18/openjdk18-openshift:1.2-6

USER root

EXPOSE 8080

RUN mkdir -p /mnt/data/suportedbdc_logs/cloud/@artifactId@
RUN mkdir -p /mnt/data/suportedbdc_apl/cloud/@artifactId@
RUN ln -Tfs /mnt/data/suportedbdc_apl /suportedbdc_apl
RUN ln -Tfs /mnt/data/suportedbdc_logs /suportedbdc_logs

COPY target/@project.build.finalName@.@project.packaging@ @project.build.finalName@.@project.packaging@

ENTRYPOINT ["java","-jar","@project.build.finalName@.@project.packaging@"]