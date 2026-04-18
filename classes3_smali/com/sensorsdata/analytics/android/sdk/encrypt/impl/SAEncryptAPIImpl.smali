.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;
.super Ljava/lang/Object;
.source "SAEncryptAPIImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.EncryptAPIImpl"


# instance fields
.field private mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

.field private mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

.field private mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_3
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    .line 47
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 48
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isEnableEncrypt()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isTransportEncrypt()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2e

    .line 52
    :cond_18
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 53
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getAdvertConfig()Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/SAAdvertisingConfig;->secreteKey:Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    if-eqz v1, :cond_46

    .line 54
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    goto :goto_46

    .line 49
    :cond_2e
    :goto_2e
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    invoke-direct {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    .line 50
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    .line 51
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->initSecretKey(Landroid/content/Context;)V

    .line 56
    :cond_46
    :goto_46
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getStorePlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    .line 57
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->initSecretKey(Landroid/content/Context;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method public decryptAES(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 106
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptAES(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptEventData(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->encryptTrackData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public encryptEventData(Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;",
            ")TT;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    if-nez v0, :cond_5

    return-object p1

    .line 119
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->encryptTrackData(Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    const-string v0, "encryptAES"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 67
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v0, "decryptAES"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 69
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    const-string v0, "verifySecretKey"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 71
    aget-object p1, p2, v1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->verifySecretKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_34
    const-string v0, "encryptEventData"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 73
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->encryptEventData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_43
    const-string v0, "encryptEventDataWithKey"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 75
    aget-object p1, p2, v1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    invoke-virtual {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->encryptEventData(Ljava/lang/Object;Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_57
    const-string v0, "storeSecretKey"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 77
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->storeSecretKey(Ljava/lang/String;)V

    goto :goto_c1

    :cond_67
    const-string v0, "loadSecretKey"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 79
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->loadSecretKey()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_74
    const-string v0, "supportTransportEncrypt"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 81
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->isSupportTransportEncrypt()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_83
    const-string v0, "storeEvent"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 83
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->getEncryptListener()Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object p1

    .line 84
    instance-of v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;

    if-eqz v0, :cond_c1

    .line 85
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;->encryptEventRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a0
    const-string v0, "loadEvent"

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 88
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSensorsDataEncrypt:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SAEventEncryptTools;->getEncryptListener()Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object p1

    .line 89
    instance-of v0, p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;

    if-eqz v0, :cond_c1

    .line 90
    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;

    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;->decryptEventRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_bc} :catch_bd

    return-object p1

    :catch_bd
    move-exception p1

    .line 94
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_c1
    :goto_c1
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadSecretKey()Ljava/lang/String;
    .registers 3

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->loadSecretKey()Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getEncryptListener(Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;)Lcom/sensorsdata/analytics/android/sdk/encrypt/SAEncryptListener;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v0, ""

    return-object v0

    .line 156
    :cond_11
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/SecreteKey;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public storeSecretKey(Ljava/lang/String;)V
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->getInstance(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->storeSecretKey(Ljava/lang/String;)V

    return-void
.end method

.method public verifySecretKey(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const-string v0, "v"

    .line 124
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "key"

    .line 125
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "symmetricEncryptType"

    .line 126
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "asymmetricEncryptType"

    .line 127
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encrypt, version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", symmetricEncryptType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", asymmetricEncryptType = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SA.EncryptAPIImpl"

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_7b

    .line 135
    :cond_5f
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSecretKeyManager:Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;

    if-eqz v1, :cond_6e

    .line 136
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/encrypt/biz/SecretKeyManager;->checkPublicSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    .line 138
    :cond_6e
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_disable:I

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_87

    .line 134
    :cond_7b
    :goto_7b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/SAEncryptAPIImpl;->mSAContextManager:Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/R$string;->sensors_analytics_encrypt_fail:I

    invoke-static {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADisplayUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_87
    return-object p1
.end method
