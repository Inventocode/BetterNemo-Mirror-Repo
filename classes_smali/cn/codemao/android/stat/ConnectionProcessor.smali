.class public Lcn/codemao/android/stat/ConnectionProcessor;
.super Ljava/lang/Object;
.source "ConnectionProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONNECT_TIMEOUT_IN_MILLISECONDS:I = 0x7530

.field private static final READ_TIMEOUT_IN_MILLISECONDS:I = 0x7530

.field private static final hexArray:[C

.field protected static salt:Ljava/lang/String;


# instance fields
.field private final deviceId_:Lcn/codemao/android/stat/DeviceId;

.field private final serverURL_:Ljava/lang/String;

.field private final sslContext_:Ljavax/net/ssl/SSLContext;

.field private final store_:Lcn/codemao/android/stat/CountlyStore;

.field private uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/codemao/android/stat/ConnectionProcessor;->hexArray:[C

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcn/codemao/android/stat/CountlyStore;Lcn/codemao/android/stat/DeviceId;Ljavax/net/ssl/SSLContext;Lcn/codemao/android/stat/UploadResultCallback;)V
    .registers 6

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcn/codemao/android/stat/ConnectionProcessor;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    .line 67
    iput-object p2, p0, Lcn/codemao/android/stat/ConnectionProcessor;->store_:Lcn/codemao/android/stat/CountlyStore;

    .line 68
    iput-object p3, p0, Lcn/codemao/android/stat/ConnectionProcessor;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    .line 69
    iput-object p4, p0, Lcn/codemao/android/stat/ConnectionProcessor;->sslContext_:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    .line 319
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 320
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 321
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 322
    sget-object v4, Lcn/codemao/android/stat/ConnectionProcessor;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 323
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 325
    :cond_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sha1Hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "SHA-1"

    .line 300
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 301
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 302
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 303
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 306
    invoke-static {p0}, Lcn/codemao/android/stat/ConnectionProcessor;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_2d

    :catchall_1a
    move-exception p0

    .line 308
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "CodeMaoStat"

    const-string v1, "Cannot tamper-protect params"

    .line 309
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return-object p0
.end method

.method private urlConnectionForEventData(Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcn/codemao/android/stat/CodeMaoStat;->publicKeyPinCertificates:Ljava/util/List;

    if-nez v1, :cond_16

    sget-object v1, Lcn/codemao/android/stat/CodeMaoStat;->certificatePinCertificates:Ljava/util/List;

    if-nez v1, :cond_16

    .line 76
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_25

    .line 78
    :cond_16
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 79
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionProcessor;->sslContext_:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_25
    const/16 v1, 0x7530

    .line 82
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    .line 87
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 91
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 93
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 94
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-object v0
.end method


# virtual methods
.method getCountlyStore()Lcn/codemao/android/stat/CountlyStore;
    .registers 2

    .line 334
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionProcessor;->store_:Lcn/codemao/android/stat/CountlyStore;

    return-object v0
.end method

.method getDeviceId()Lcn/codemao/android/stat/DeviceId;
    .registers 2

    .line 338
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionProcessor;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    return-object v0
.end method

.method getServerURL()Ljava/lang/String;
    .registers 2

    .line 330
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionProcessor;->serverURL_:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 10

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionProcessor;->store_:Lcn/codemao/android/stat/CountlyStore;

    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->connections()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 102
    array-length v1, v0

    if-nez v1, :cond_d

    goto/16 :goto_186

    .line 106
    :cond_d
    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionProcessor;->deviceId_:Lcn/codemao/android/stat/DeviceId;

    invoke-virtual {v1}, Lcn/codemao/android/stat/DeviceId;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CodeMaoStat"

    const/4 v3, 0x0

    if-nez v1, :cond_38

    .line 107
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Device ID available yet, skipping request "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_38
    aget-object v1, v0, v3

    const-string v4, "CodeMaoStat connection"

    .line 112
    invoke-static {v4, v1}, Lcn/codemao/android/stat/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 117
    :try_start_40
    invoke-direct {p0, v1}, Lcn/codemao/android/stat/ConnectionProcessor;->urlConnectionForEventData(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 123
    instance-of v5, v4, Ljava/net/HttpURLConnection;

    const/4 v6, 0x1

    if-eqz v5, :cond_86

    .line 124
    move-object v5, v4

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 125
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v7, 0xc8

    if-lt v5, v7, :cond_5c

    const/16 v7, 0x12c

    if-ge v5, v7, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    :goto_5d
    if-nez v6, :cond_87

    .line 127
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v7

    invoke-virtual {v7}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP error response code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " from submitting event data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_86
    const/4 v5, 0x0

    :cond_87
    :goto_87
    if-eqz v6, :cond_b6

    .line 135
    iget-object v5, p0, Lcn/codemao/android/stat/ConnectionProcessor;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    if-eqz v5, :cond_90

    .line 136
    invoke-interface {v5, v1}, Lcn/codemao/android/stat/UploadResultCallback;->onSuccess(Ljava/lang/String;)V

    .line 137
    :cond_90
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v5

    invoke-virtual {v5}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_ae

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ok ->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_ae
    iget-object v5, p0, Lcn/codemao/android/stat/ConnectionProcessor;->store_:Lcn/codemao/android/stat/CountlyStore;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Lcn/codemao/android/stat/CountlyStore;->removeConnection(Ljava/lang/String;)V

    goto :goto_103

    :cond_b6
    const/16 v6, 0x190

    if-lt v5, v6, :cond_115

    const/16 v6, 0x1f4

    if-ge v5, v6, :cond_115

    .line 144
    iget-object v6, p0, Lcn/codemao/android/stat/ConnectionProcessor;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    if-eqz v6, :cond_d6

    .line 146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcn/codemao/android/stat/UploadResultCallback;->onError(Ljava/lang/String;)V

    .line 147
    :cond_d6
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v6

    invoke-virtual {v6}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ->"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_fc
    iget-object v5, p0, Lcn/codemao/android/stat/ConnectionProcessor;->store_:Lcn/codemao/android/stat/CountlyStore;

    aget-object v0, v0, v3

    invoke-virtual {v5, v0}, Lcn/codemao/android/stat/CountlyStore;->removeConnection(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_103} :catch_129
    .catchall {:try_start_40 .. :try_end_103} :catchall_127

    .line 168
    :goto_103
    instance-of v0, v4, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 170
    :try_start_107
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_10e

    .line 174
    :catchall_10e
    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 152
    :cond_115
    :try_start_115
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionProcessor;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    if-eqz v0, :cond_11e

    const-string v3, "unkownerror"

    .line 154
    invoke-interface {v0, v3}, Lcn/codemao/android/stat/UploadResultCallback;->onError(Ljava/lang/String;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11e} :catch_129
    .catchall {:try_start_115 .. :try_end_11e} :catchall_127

    .line 168
    :cond_11e
    instance-of v0, v4, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_186

    .line 170
    :try_start_122
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_16d

    goto :goto_16a

    :catchall_127
    move-exception v0

    goto :goto_173

    :catch_129
    move-exception v0

    .line 159
    :try_start_12a
    iget-object v3, p0, Lcn/codemao/android/stat/ConnectionProcessor;->uploadResultCallback:Lcn/codemao/android/stat/UploadResultCallback;

    if-eqz v3, :cond_135

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcn/codemao/android/stat/UploadResultCallback;->onError(Ljava/lang/String;)V

    .line 161
    :cond_135
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_160

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got exception while trying to submit event data: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catchall {:try_start_12a .. :try_end_160} :catchall_127

    :cond_160
    if-eqz v4, :cond_186

    .line 168
    instance-of v0, v4, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_186

    .line 170
    :try_start_166
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 171
    :goto_16a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_16d

    .line 174
    :catchall_16d
    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_186

    :goto_173
    if-eqz v4, :cond_185

    .line 168
    instance-of v1, v4, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_185

    .line 170
    :try_start_179
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_180
    .catchall {:try_start_179 .. :try_end_180} :catchall_180

    .line 174
    :catchall_180
    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 176
    :cond_185
    throw v0

    :cond_186
    :goto_186
    return-void
.end method
