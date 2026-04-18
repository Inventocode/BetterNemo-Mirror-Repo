.class public Lcom/ainirobot/oauth/utils/CommonInterceptor;
.super Ljava/lang/Object;
.source "CommonInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSign(Lokhttp3/HttpUrl$Builder;)V
    .registers 12

    const-string v0, "yao"

    .line 95
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->queryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 102
    :cond_23
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 107
    invoke-virtual {v1, v4}, Lokhttp3/HttpUrl;->queryParameterValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 108
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "&"

    const-string v9, "="

    if-gt v7, v5, :cond_6d

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 112
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 113
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_69
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 118
    :cond_6d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 122
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_8c
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 128
    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v5, :cond_9b

    return-void

    .line 132
    :cond_9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v1, v5

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBAPD1QBQCd1nZwALJnIOcshIXUnM27LiAUdxtciquR/qlexZvUf7HJgrzoEZ7m2LiHErwzDWhWyMoqXGsoTTamzvo5xJy0xIpAy045jApglQ8qS856nl4kNShmnAZJ121cFRLspJGSiClX3xEe63AB7vlVzoEthnHU/XxfDVkCAYjAgMBAAECgYEArjYzIQRzdDP6HknT7lghavEPvJtOZUrpZLyAmZkuE2sHZj4QA2vK9ooULEF8I+8k043rpy7FLNNeRwCwAP240x2blPVuo1UZWIgYJ+6uLTWdQdin26MOYi9DLf9wuBkeYLJKhxAH7pRL6lAoLqHKEbREKbCzyKEWTyDKG0c8cnECQQD+19K8GXI7cZcTPy6WZ2VId0RUM7A+vPREJ1n5g3Hc3KgBk+pzwzqorrynP5Ci/6q/H5oi+Bsvd2RSy1M0B4lpAkEA8g1KPmQggTveM5wESadfuMy4kiU3odeFofRxnck2uVoClwbyPL2Bo9VnL71Hd0leJHvUWVSGZ1QoghvlZRi1qwJBAJ7K1GCoamlnyf8QK3NEUfPpfQYKfxNYoculyYaTxOseAwGYrUocp/xbhOmhzfoC3N3iTyTi++2Ds1tznhCZcaECQQDfjFSoYLMAiDlEsu/m0lT+iNxh5UuHBlSd6fPQxRfsgWvo7fplDKShmiMNnSNW0QTIbzEEO6NR5RDwcTEgeHy3AkEAh4I4MhDdpH+QOt4X7Uv2/lOsThHHVp3fAmdxmCjBp/+sWT+Rhhwk95RUvdHaYtnv0bQp2/7uDOHH3hRQ7sUQWQ=="

    .line 135
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 137
    :try_start_ab
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v2, "RSA"

    .line 140
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 141
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preStr\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v1, v2}, Lcom/ainirobot/oauth/connect/SignUtil;->sign256(Ljava/lang/String;Ljava/security/PrivateKey;)[B

    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/ainirobot/oauth/connect/SignUtil;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sign\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sign"

    .line 146
    invoke-virtual {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    :try_end_ef
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ab .. :try_end_ef} :catch_104
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_ab .. :try_end_ef} :catch_ff
    .catch Ljava/security/InvalidKeyException; {:try_start_ab .. :try_end_ef} :catch_fa
    .catch Ljava/security/SignatureException; {:try_start_ab .. :try_end_ef} :catch_f5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ab .. :try_end_ef} :catch_f0

    goto :goto_108

    :catch_f0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_108

    :catch_f5
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_108

    :catch_fa
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_108

    :catch_ff
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_108

    :catch_104
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_108
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "pf"

    const-string v3, "robot"

    .line 66
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getOsv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "osv"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getAppv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appv"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getAppLan()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_lang"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getCTime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ctime"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 71
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getItime()Ljava/lang/String;

    move-result-object v2

    const-string v3, "itime"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getLon()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lon"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getLat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lat"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 74
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ainirobot/oauth/connect/CommonParamUtil;->getAppType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_type"

    invoke-virtual {v1, v3, v2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    const-string v2, "sv"

    const-string v3, "1"

    .line 76
    invoke-virtual {v1, v2, v3}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    .line 78
    invoke-direct {p0, v1}, Lcom/ainirobot/oauth/utils/CommonInterceptor;->addSign(Lokhttp3/HttpUrl$Builder;)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldRequest\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "yao"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 91
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
