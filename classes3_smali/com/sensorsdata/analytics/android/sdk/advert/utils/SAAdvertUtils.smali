.class public Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;
.super Ljava/lang/Object;
.source "SAAdvertUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAAdvert"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 85
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallSource(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const-string v0, "imei=%s##imei_old=%s##imei_slot1=%s##imei_slot2=%s##imei_meid=%s"

    .line 94
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFirstTrackInstallation(Z)Z
    .registers 1

    if-eqz p0, :cond_15

    .line 62
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstInstallationWithCallbackPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 64
    :cond_15
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstInstallationPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isInstallationTracked()Z
    .registers 2

    .line 129
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "first_track_installation"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "first_track_installation_with_callback"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 8

    .line 100
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->sharedInstance()Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->isNetworkRequestEnable()Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "SA.SAAdvert"

    const-string p1, "NetworkRequest is disabled"

    .line 101
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_12
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_19

    return-void

    :cond_19
    if-eqz p2, :cond_57

    .line 108
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_57

    .line 111
    :try_start_21
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ekey"

    .line 114
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "9"

    goto :goto_3e

    .line 117
    :cond_38
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->gzipData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_53

    const-string v0, "1"

    :goto_3e
    :try_start_3e
    const-string v1, "_flush_time"

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0, p0, p3}, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p0

    .line 122
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_57
    :goto_57
    return-void
.end method

.method private static declared-synchronized sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;,
            Lcom/sensorsdata/analytics/android/sdk/exceptions/ResponseErrorException;
        }
    .end annotation

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/advert/utils/SAAdvertUtils;

    monitor-enter v0

    const/4 v1, 0x0

    .line 138
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_146
    .catchall {:try_start_4 .. :try_end_f} :catchall_141

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_27

    :try_start_13
    const-string p1, "SA.SAAdvert"

    const-string p2, "can not connect %s, it shouldn\'t happen"

    new-array p3, v3, [Ljava/lang/Object;

    aput-object v2, p3, v4

    .line 141
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_13b
    .catchall {:try_start_13 .. :try_end_22} :catchall_138

    .line 201
    :try_start_22
    invoke-static {v1, v1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_157

    .line 142
    monitor-exit v0

    return-void

    .line 145
    :cond_27
    :try_start_27
    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 147
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "crc"

    .line 150
    invoke-virtual {v2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3a
    const-string p1, "gzip"

    .line 153
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "data_list"

    .line 154
    invoke-virtual {v2, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "sink_name"

    const-string p2, "mirror"

    .line 155
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 157
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_57} :catch_13b
    .catchall {:try_start_27 .. :try_end_57} :catchall_138

    if-eqz p2, :cond_5e

    .line 201
    :try_start_59
    invoke-static {v1, v1, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_157

    .line 159
    monitor-exit v0

    return-void

    :cond_5e
    :try_start_5e
    const-string p2, "UTF-8"

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 163
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p2, "POST"

    .line 164
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 p2, 0x7530

    .line 166
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 168
    invoke-virtual {p0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 169
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_7c} :catch_13b
    .catchall {:try_start_5e .. :try_end_7c} :catchall_138

    .line 170
    :try_start_7c
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_81} :catch_135
    .catchall {:try_start_7c .. :try_end_81} :catchall_132

    :try_start_81
    const-string v2, "UTF-8"

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 172
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 174
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string v2, "SA.SAAdvert"

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a7} :catch_12f
    .catchall {:try_start_81 .. :try_end_a7} :catchall_12c

    .line 177
    :try_start_a7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a7 .. :try_end_ab} :catch_ac
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_12f
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_12c

    goto :goto_b0

    .line 179
    :catch_ac
    :try_start_ac
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_12f
    .catchall {:try_start_ac .. :try_end_b0} :catchall_12c

    .line 181
    :goto_b0
    :try_start_b0
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->slurp(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b7} :catch_12a
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_128

    .line 185
    :try_start_b7
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/SALog;->isLogEnabled()Z

    move-result v5

    if-eqz v5, :cond_123

    .line 187
    invoke-static {p4}, Lcom/sensorsdata/analytics/android/sdk/util/JSONUtils;->formatJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/16 v5, 0xc8

    if-lt p1, v5, :cond_e7

    const/16 v5, 0x12c

    if-ge p1, v5, :cond_e7

    const-string p1, "SA.SAAdvert"

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sat valid message: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_123

    :cond_e7
    const-string v5, "SA.SAAdvert"

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sat invalid message: \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "SA.SAAdvert"

    .line 194
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v6, "ret_code: %d"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SA.SAAdvert"

    .line 195
    sget-object p4, Lcom/sensorsdata/analytics/android/sdk/util/TimeUtils;->SDK_LOCALE:Ljava/util/Locale;

    const-string v5, "ret_content: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-static {p4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_123} :catch_12f
    .catchall {:try_start_b7 .. :try_end_123} :catchall_12c

    .line 201
    :cond_123
    :goto_123
    :try_start_123
    invoke-static {p3, p2, v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_157

    .line 203
    monitor-exit v0

    return-void

    :catchall_128
    move-exception p1

    goto :goto_152

    :catch_12a
    move-exception p1

    goto :goto_13f

    :catchall_12c
    move-exception p1

    move-object v2, v1

    goto :goto_152

    :catch_12f
    move-exception p1

    move-object v2, v1

    goto :goto_13f

    :catchall_132
    move-exception p1

    move-object v2, v1

    goto :goto_153

    :catch_135
    move-exception p1

    move-object p3, v1

    goto :goto_13e

    :catchall_138
    move-exception p1

    move-object p2, v1

    goto :goto_144

    :catch_13b
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    :goto_13e
    move-object v2, p3

    :goto_13f
    move-object v1, p0

    goto :goto_14a

    :catchall_141
    move-exception p1

    move-object p0, v1

    move-object p2, p0

    :goto_144
    move-object v2, p2

    goto :goto_153

    :catch_146
    move-exception p1

    move-object p2, v1

    move-object p3, p2

    move-object v2, p3

    .line 199
    :goto_14a
    :try_start_14a
    new-instance p0, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exceptions/ConnectErrorException;-><init>(Ljava/lang/Throwable;)V

    throw p0
    :try_end_150
    .catchall {:try_start_14a .. :try_end_150} :catchall_150

    :catchall_150
    move-exception p1

    move-object p0, v1

    :goto_152
    move-object v1, p3

    .line 201
    :goto_153
    :try_start_153
    invoke-static {v1, p2, v2, p0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->closeStream(Ljava/io/BufferedOutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    .line 202
    throw p1
    :try_end_157
    .catchall {:try_start_153 .. :try_end_157} :catchall_157

    :catchall_157
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setTrackInstallation(Z)V
    .registers 2

    if-eqz p0, :cond_f

    .line 74
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstInstallationWithCallbackPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    .line 76
    :cond_f
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getInstance()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentLoader;->getFirstInstallationPst()Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentIdentity;->commit(Ljava/lang/Object;)V

    return-void
.end method
