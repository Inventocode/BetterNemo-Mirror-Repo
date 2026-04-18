.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;
.super Ljava/lang/Object;
.source "SecretKeyManager.java"


# static fields
.field private static INSTANCE:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager; = null

.field private static final KEY_VERSION_DEFAULT:I = 0x0

.field private static final SP_SECRET_KEY:Ljava/lang/String; = "secret_key"

.field private static final SP_SUPPORT_TRANSPORT_ENCRYPT:Ljava/lang/String; = "supportTransportEncrypt"

.field private static final TAG:Ljava/lang/String; = "SA.SecretKeyManager"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

.field private final mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;


# direct methods
.method private constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 53
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getPersistentSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    .line 54
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object p1

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getEncryptors()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mListeners:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->isECEncrypt()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 57
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SAECEncrypt;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    return-void
.end method

.method private disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "EC:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1b

    :cond_f
    const-string v0, ":"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    :goto_1b
    return-object p1
.end method

.method public static getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;
    .registers 2

    .line 62
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    .line 65
    :cond_b
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->INSTANCE:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    return-object p0
.end method

.method private isEncryptorTypeNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Z
    .registers 3

    .line 246
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 247
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method private isMatchEncryptType(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z
    .registers 5

    if-eqz p1, :cond_28

    .line 241
    invoke-virtual {p0, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isEncryptorTypeNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 242
    invoke-interface {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return p1
.end method

.method private parseSecreteKey(Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V
    .registers 6

    const-string v0, "type"

    const-string v1, "key_ec"

    if-eqz p1, :cond_63

    .line 253
    :try_start_6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->isECEncrypt()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 256
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_21
    const-string v1, "public_key"

    .line 260
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    const-string v1, "AES"

    .line 261
    iput-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 263
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    .line 265
    iput-object v0, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    goto :goto_56

    :cond_52
    const-string v0, "RSA"

    .line 267
    iput-object v0, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    :goto_56
    const-string v0, "pkv"

    .line 269
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p1

    .line 271
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_63
    :goto_63
    return-void
.end method

.method private readAppKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    invoke-interface {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_13

    .line 202
    iget-object v1, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    .line 203
    iget v2, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    .line 204
    iget-object v3, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    .line 205
    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    goto :goto_16

    :cond_13
    const/4 v2, 0x0

    move-object v0, v1

    move-object v3, v0

    .line 207
    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAppKey [key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,v = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,symmetricEncryptType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,asymmetricEncryptType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SA.SecretKeyManager"

    invoke-static {v5, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private readLocalKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 221
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "secret_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_34

    .line 223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "key"

    .line 224
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "version"

    .line 225
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "symmetricEncryptType"

    .line 226
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "asymmetricEncryptType"

    .line 227
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_36

    :cond_34
    move-object v0, v2

    move-object v4, v0

    .line 229
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readLocalKey [key = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,v = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,symmetricEncryptType = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ,asymmetricEncryptType = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SA.SecretKeyManager"

    invoke-static {v5, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private storeSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V
    .registers 5

    :try_start_0
    const-string v0, "SA.SecretKeyManager"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[saveSecretKey] publicKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 281
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_3f

    const-string v1, "secret_key"

    if-eqz v0, :cond_33

    .line 282
    :try_start_26
    invoke-interface {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;->saveSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V

    .line 284
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 286
    :cond_33
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 290
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_43
    :goto_43
    return-void
.end method


# virtual methods
.method public checkPublicSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, ""

    .line 153
    :try_start_2
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v1

    if-eqz v1, :cond_8a

    .line 154
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_8a

    .line 156
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_73

    .line 157
    invoke-direct {p0, p3}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->disposeECPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_73

    if-eqz p4, :cond_6c

    if-eqz p5, :cond_6c

    .line 158
    iget-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    .line 159
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p2, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    goto :goto_6c

    .line 162
    :cond_51
    sget p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_verify_fail_type:I

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p4, p2, v4

    aput-object p5, p2, v3

    iget-object p3, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    aput-object p3, p2, v5

    const/4 p3, 0x3

    iget-object p4, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_6c
    :goto_6c
    sget p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_pass:I

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :cond_73
    sget p3, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_verify_fail_version:I

    invoke-static {p1, p3}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p2, p3, v4

    iget p2, v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 155
    :cond_8a
    :goto_8a
    sget p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_key_null:I

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_91

    return-object p1

    :catch_91
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;
    .registers 5

    .line 127
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 128
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 129
    invoke-direct {p0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isMatchEncryptType(Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public isSecretKeyNull(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Z
    .registers 3

    if-eqz p1, :cond_11

    .line 138
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget p1, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method public isSupportTransportEncrypt()Ljava/lang/Boolean;
    .registers 4

    .line 175
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const-string v1, "supportTransportEncrypt"

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->isExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0
.end method

.method public loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mPersistentSecretKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/IPersistentSecretKey;

    if-eqz v0, :cond_9

    .line 120
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->readAppKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    return-object v0

    .line 122
    :cond_9
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->readLocalKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    return-object v0
.end method

.method public storeSecretKey(Ljava/lang/String;)V
    .registers 11

    const-string v0, ""

    const-string v1, "supportTransportEncrypt"

    .line 70
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableEncrypt()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_1a

    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTransportEncrypt()Z

    move-result p1

    if-eqz p1, :cond_a3

    :cond_1a
    const-string p1, "configs"

    .line 72
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    const/4 v4, -0x1

    invoke-direct {p1, v0, v4, v0, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->mSAConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getEncryptors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a0

    const-string v4, "key_v2"

    .line 77
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_8f

    const-string v5, "type"

    .line 79
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8f

    .line 81
    aget-object v6, v5, v3

    const/4 v7, 0x1

    .line 82
    aget-object v5, v5, v7

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5a
    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    .line 84
    invoke-interface {v7}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->asymmetricEncryptType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 85
    invoke-interface {v7}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;->symmetricEncryptType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    const-string v7, "public_key"

    .line 86
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    const-string v7, "pkv"

    .line 87
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->version:I

    .line 88
    iput-object v6, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->asymmetricEncryptType:Ljava/lang/String;

    .line 89
    iput-object v5, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->symmetricEncryptType:Ljava/lang/String;

    goto :goto_5a

    .line 94
    :cond_8f
    iget-object v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "key"

    .line 95
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->parseSecreteKey(Lorg/json/JSONObject;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V

    .line 100
    :cond_a0
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->storeSecretKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)V

    .line 103
    :cond_a3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 104
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setBool(Ljava/lang/String;Z)V

    goto :goto_c1

    .line 106
    :cond_b5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/SAStoreManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/sensorsdata/analytics/android/sdk/plugin/encrypt/AbstractStoreManager;->setBool(Ljava/lang/String;Z)V
    :try_end_bc
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c1
    return-void
.end method
