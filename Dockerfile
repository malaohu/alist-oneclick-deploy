FROM centos:centos7 

COPY conf_tmp.yml conf.yml
COPY alist_linux_386 alist
COPY entrypoint.sh entrypoint.sh
COPY dist dist

RUN chmod +x entrypoint.sh
RUN chmod +x alist
RUN chmod +x conf.yml 

EXPOSE 5244 

ENTRYPOINT ["./entrypoint.sh"] 

 
