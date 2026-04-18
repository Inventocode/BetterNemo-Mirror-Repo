.class public Lcom/umeng/commonsdk/stateless/c;
.super Ljava/lang/Object;
.source "UMSLNetWorkSenderHelper.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "10.0.0.172"

    .line 48
    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:Ljava/lang/String;

    const/16 v0, 0x50

    .line 49
    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    .line 54
    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 72
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method private b()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v1, "sl_domain_p"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v3, "oversea_sl_domain_p"

    invoke-static {v1, v3, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 92
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    .line 94
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 95
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->assembleStatelessURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    .line 98
    :cond_2a
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 102
    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    sget-object v0, Lcom/umeng/commonsdk/statistics/b;->b:Ljava/lang/String;

    const-string v1, "461"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 104
    :cond_4a
    sget-object v0, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    sput-object v0, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    :cond_4e
    return-void
.end method

.method private c()Z
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_60

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 113
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    .line 114
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 113
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 118
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 120
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    :cond_2b
    if-nez v0, :cond_2e

    return v1

    .line 126
    :cond_2e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 127
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_60

    .line 128
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    const-string v2, "cmwap"

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    const-string v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_5a

    if-eqz v0, :cond_60

    :cond_59
    return v3

    :catchall_5a
    move-exception v0

    .line 135
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_60
    return v1
.end method


# virtual methods
.method public a([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const-string v0, "--->>> stateless: disconnect connection."

    const-string v1, "MobclickRT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_14b

    if-nez p2, :cond_c

    goto/16 :goto_14b

    .line 149
    :cond_c
    sget v4, Lcom/umeng/commonsdk/statistics/SdkVersion;->SDK_TYPE:I

    if-nez v4, :cond_14

    .line 151
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->a()V

    goto :goto_1b

    .line 155
    :cond_14
    sget-object v4, Lcom/umeng/commonsdk/stateless/a;->k:Ljava/lang/String;

    sput-object v4, Lcom/umeng/commonsdk/stateless/a;->h:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->b()V

    .line 160
    :goto_1b
    sget-object v4, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    .line 161
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_25

    :cond_24
    move-object p3, v4

    :goto_25
    const/4 v4, 0x0

    .line 168
    :try_start_26
    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->c()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 169
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lcom/umeng/commonsdk/stateless/c;->a:Ljava/lang/String;

    iget v9, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 170
    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v6, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_7b

    .line 172
    :cond_5c
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v5, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_7b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_26 .. :try_end_7b} :catch_128
    .catchall {:try_start_26 .. :try_end_7b} :catchall_117

    .line 175
    :goto_7b
    :try_start_7b
    sget-object v5, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v5, "TLS"

    .line 197
    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 198
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v4, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 199
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    const-string v5, "X-Umeng-UTC"

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Msg-Type"

    const-string v6, "envelope/json"

    .line 203
    invoke-virtual {p3, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ut/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v5, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x7530

    .line 206
    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 207
    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string p4, "POST"

    .line 208
    invoke-virtual {p3, p4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p3, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 211
    invoke-virtual {p3, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 212
    invoke-virtual {p3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 214
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 215
    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 218
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 220
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    const/16 p4, 0xc8

    if-ne p1, p4, :cond_109

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--->>> send stateless message success : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/umeng/commonsdk/stateless/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_7b .. :try_end_108} :catch_115
    .catchall {:try_start_7b .. :try_end_108} :catchall_113

    const/4 v2, 0x1

    .line 241
    :cond_109
    :try_start_109
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_10c

    .line 248
    :catch_10c
    :goto_10c
    :try_start_10c
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_112
    .catchall {:try_start_10c .. :try_end_112} :catchall_139

    goto :goto_139

    :catchall_113
    move-exception p1

    goto :goto_119

    :catch_115
    move-exception p1

    goto :goto_12a

    :catchall_117
    move-exception p1

    move-object p3, v4

    :goto_119
    :try_start_119
    const-string p2, "Exception,Failed to send message."

    .line 236
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11e
    .catchall {:try_start_119 .. :try_end_11e} :catchall_13a

    if-eqz v4, :cond_125

    .line 241
    :try_start_120
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_125

    :catch_124
    nop

    :cond_125
    :goto_125
    if-eqz p3, :cond_139

    goto :goto_10c

    :catch_128
    move-exception p1

    move-object p3, v4

    :goto_12a
    :try_start_12a
    const-string p2, "SSLHandshakeException, Failed to send message."

    .line 234
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12f
    .catchall {:try_start_12a .. :try_end_12f} :catchall_13a

    if-eqz v4, :cond_136

    .line 241
    :try_start_131
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_135

    goto :goto_136

    :catch_135
    nop

    :cond_136
    :goto_136
    if-eqz p3, :cond_139

    goto :goto_10c

    :catchall_139
    :cond_139
    :goto_139
    return v2

    :catchall_13a
    move-exception p1

    if-eqz v4, :cond_142

    :try_start_13d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_140} :catch_141

    goto :goto_142

    :catch_141
    nop

    :cond_142
    :goto_142
    if-eqz p3, :cond_14a

    .line 248
    :try_start_144
    invoke-static {v1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_14a
    .catchall {:try_start_144 .. :try_end_14a} :catchall_14a

    .line 253
    :catchall_14a
    :cond_14a
    throw p1

    :cond_14b
    :goto_14b
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "[stateless] sendMessage, envelopeByte == null || path == null "

    aput-object p2, p1, v2

    const-string p2, "walle"

    .line 145
    invoke-static {p2, p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
