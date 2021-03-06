#include "networkaccessmanager.h"
#include <QRegExp>
#include <QStandardPaths>

NetWorkAccessManager::NetWorkAccessManager(QObject *parent) : QNetworkAccessManager(parent)
{
    extractMap = new QMultiMap<QString, QByteArray>();
    extractors = new QList<QString>();
    cookieJar = new CookieJar;
    setCookieJar(cookieJar);
    diskCache = new QNetworkDiskCache(this);
    QString cachePath = QStandardPaths::writableLocation(QStandardPaths::CacheLocation);
    diskCache->setCacheDirectory(cachePath);
    diskCache->setMaximumCacheSize(10 * 1024 * 1024);
    this->setCache(diskCache);
}

NetWorkAccessManager::~NetWorkAccessManager()
{
    delete extractMap;
    delete extractors;
    delete cookieJar;
}

QNetworkReply * NetWorkAccessManager::createRequest(Operation op, const QNetworkRequest &request, QIODevice *outgoingData)
{
    QString url = request.url().toString();
    if(!this->interceptor.isNull() && !this->interceptor.isEmpty() && url.contains(QRegExp(this->interceptor)))
    {
        QNetworkRequest req;
        req.setUrl(QUrl(""));
        return QNetworkAccessManager::createRequest(op, req, outgoingData);
    }
    QNetworkRequest req(request);
    req.setAttribute(QNetworkRequest::CacheLoadControlAttribute, QNetworkRequest::PreferCache);
    QNetworkReply * reply = QNetworkAccessManager::createRequest(op, req, outgoingData);
    QString path = req.url().path();
    if(extractors->contains(path))
    {
        qDebug() << path << " will be save ";
        if(reply->bytesAvailable() > 0) {
            extractMap->insertMulti(path, reply->peek(reply->bytesAvailable()).toBase64());
        } else {
            QByteArray * data = new QByteArray;
            connect(reply, &QNetworkReply::readyRead, [reply, data, path](){
                qDebug() << path << " readyRead ";
                qint64 size = reply->bytesAvailable();
                QByteArray array = reply->peek(size);
                data->append(array);
            });
            connect(reply, &QNetworkReply::finished, [=](){
                qDebug() << path << " finished ";
                extractMap->insertMulti(path, (*data).toBase64());
                delete data;
            });
        }
    }
    else
    {
        qDebug() << path << " will not be save ";
    }

    return reply;
}

CookieJar * NetWorkAccessManager::getCookieJar()
{
    return cookieJar;
}

QMultiMap<QString, QByteArray> * NetWorkAccessManager::getExtractMap()
{
    return this->extractMap;
}

void NetWorkAccessManager::setInterceptor(QString &interceptor)
{
    this->interceptor = interceptor;
}

QList<QString> * NetWorkAccessManager::getExtractors()
{
    return extractors;
}
