.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;
.super Ljava/lang/Object;
.source "SAEventEncryptTools.java"


# instance fields
.field private final mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

.field private mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    return-void
.end method

.method private gzipEventData(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    .line 161
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_26
    .catchall {:try_start_1 .. :try_end_b} :catchall_24

    .line 163
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 164
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 165
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_22
    .catchall {:try_start_b .. :try_end_19} :catchall_36

    .line 172
    :try_start_19
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_21
    return-object p1

    :catch_22
    move-exception p1

    goto :goto_28

    :catchall_24
    move-exception p1

    goto :goto_38

    :catch_26
    move-exception p1

    move-object v2, v0

    .line 167
    :goto_28
    :try_start_28
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_36

    if-eqz v2, :cond_35

    .line 172
    :try_start_2d
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 174
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_35
    :goto_35
    return-object v0

    :catchall_36
    move-exception p1

    move-object v0, v2

    :goto_38
    if-eqz v0, :cond_42

    .line 172
    :try_start_3a
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_42

    :catch_3e
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 177
    :cond_42
    :goto_42
    throw p1
.end method


# virtual methods
.method public encryptTrackData(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 67
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object p1

    .line 72
    :cond_1b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0

    if-nez v0, :cond_26

    return-object p1

    .line 78
    :cond_26
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    const-string v2, "EC:"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, ":"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_3e
    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    return-object p1

    .line 89
    :cond_49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->gzipEventData(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptEvent([B)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    return-object p1

    .line 93
    :cond_5c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ekey"

    .line 94
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pkv"

    .line 95
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    iget v3, v3, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "payloads"

    .line 96
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7c

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    :cond_7c
    return-object v2

    :catch_7d
    move-exception v0

    .line 99
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public encryptTrackData(Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;",
            ")TT;"
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0

    if-nez v0, :cond_12

    return-object p1

    .line 124
    :cond_12
    iget-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    const-string v2, "EC:"

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, ":"

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_28
    invoke-interface {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    return-object p1

    .line 135
    :cond_33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->gzipEventData(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->encryptEvent([B)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    return-object p1

    .line 139
    :cond_46
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "ekey"

    .line 140
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pkv"

    .line 141
    iget p2, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 143
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "payloads"

    .line 144
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_6c

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    :cond_6c
    return-object v2

    :catch_6d
    move-exception p2

    .line 147
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object p1
.end method

.method public getEncryptListener()Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    .registers 4

    const/4 v0, 0x0

    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 44
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    .line 45
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v1

    if-eqz v1, :cond_1c

    return-object v0

    .line 50
    :cond_1c
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->mSecreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v1

    .line 52
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method
