FROM postgres:15.1

ARG DB_LANG=en_US
RUN localedef -i ${DB_LANG} -c -f UTF-8 -A /usr/share/locale/locale.alias $DB_LANG.UTF-8
ENV LANG ${DB_LANG}.utf8

ENV ARCHIVE_NAME="dvdrental.zip"
ENV BACKUP_NAME="dvdrental.tar"
ENV URL="http://www.postgresqltutorial.com/wp-content/uploads/2019/05/${ARCHIVE_NAME}"

RUN apt-get update && apt-get install -y wget zip

RUN wget -nv "${URL}" -O "/tmp/${ARCHIVE_NAME}" \
  && unzip -q "/tmp/${ARCHIVE_NAME}" -d /tmp
