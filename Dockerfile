FROM omarqazi/advertising-base:latest

ENV HOME /root
ENV RAILS_ENV production

RUN mkdir -p /home/app/advertising
ADD . /home/app/advertising
WORKDIR /home/app/advertising

CMD ["/sbin/my_init"]

RUN bundle install
RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD config/webapp.conf /etc/nginx/sites-enabled/webapp.conf
ADD config/postgres-env.conf /etc/nginx/main.d/postgres-env.conf
RUN bundle exec rails assets:precompile
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80