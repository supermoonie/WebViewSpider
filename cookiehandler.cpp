#include "cookiehandler.h"
#include <QJsonArray>
#include <QNetworkCookie>
#include <cookiejar.h>

CookieHandler::CookieHandler(WebView * webView)
{
    this->webView = webView;
}

CookieHandler::~CookieHandler()
{

}

QJsonObject CookieHandler::getAllCookies()
{
    CookieJar * cookieJar = webView->getWebPage()->getNetworkAccessManager()->getCookieJar();
    QJsonArray cookieArray;
    QList<QNetworkCookie> cookieList = cookieJar->getAllCookies();
    for(int i = 0; i < cookieList.size(); i ++)
    {
        QNetworkCookie cookie = cookieList.at(i);
        QJsonObject cookieJson;
        cookieJson.insert("name", QString(cookie.name()));
        cookieJson.insert("value", QString(cookie.value()));
        cookieJson.insert("domain", QJsonValue(cookie.domain()));
        cookieJson.insert("path", QJsonValue(cookie.path()));
        cookieJson.insert("expirationDate", QJsonValue(cookie.expirationDate().toMSecsSinceEpoch()));
        cookieJson.insert("httpOnly", QJsonValue(cookie.isHttpOnly()));
        cookieJson.insert("secure", QJsonValue(cookie.isSecure()));
        cookieArray.append(cookieJson);
    }
    QJsonObject json;
    json.insert("code", 200);
    json.insert("desc", "success");
    json.insert("data", QJsonValue(cookieArray));
    return json;
}

QJsonObject CookieHandler::addCookies(QJsonArray &cookieArray)
{
    for(int i = 0; i < cookieArray.size(); i ++)
    {
        QJsonObject cookieObj = cookieArray.at(i).toObject();
        QString name = cookieObj.value("name").toString("");
        QString value = cookieObj.value("value").toString("");
        if(name.isEmpty() || value.isEmpty()) {
            continue;
        }
        QString addCookieJs("document.cookie='%1=%2'");
        webView->getWebPage()->mainFrame()->evaluateJavaScript(addCookieJs.arg(name).arg(value));
    }
    QJsonObject json;
    json.insert("code", 200);
    json.insert("desc", "success");
    json.insert("data", QJsonValue::Null);
    return json;
}

QJsonObject CookieHandler::deleteAllCookies()
{
    QJsonObject json;
    CookieJar * cookieJar = webView->getWebPage()->getNetworkAccessManager()->getCookieJar();
    QList<QNetworkCookie> cookieList = cookieJar->getAllCookies();
    foreach(QNetworkCookie cookie, cookieList) {
        cookieJar->deleteCookie(cookie);
    }
    json.insert("code", 200);
    json.insert("desc", "success");
    json.insert("data", QJsonValue::Null);
    return json;
}

