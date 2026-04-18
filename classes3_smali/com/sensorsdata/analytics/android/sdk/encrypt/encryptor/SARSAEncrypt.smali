.class public Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;
.super Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;
.source "SARSAEncrypt.java"


# instance fields
.field aesKey:[B

.field mEncryptKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/impl/AbsSAEncrypt;-><init>()V

    return-void
.end method


# virtual methods
.method public asymmetricEncryptType()Ljava/lang/String;
    .registers 2

    const-string v0, "RSA"

    return-object v0
.end method

.method public decryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 78
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->decryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptEvent([B)Ljava/lang/String;
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;->aesKey:[B

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;

    invoke-static {v0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->symmetricEncrypt([B[BLcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptEventRecord(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 73
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/AESSecretManager;->encryptAES(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptSymmetricKeyWithPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 61
    :try_start_4
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;->AES:Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->generateSymmetricKey(Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SymmetricEncryptMode;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;->aesKey:[B

    const-string v1, "RSA"

    .line 62
    invoke-static {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/encrypt/utils/EncryptUtils;->encryptAESKey(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1

    .line 68
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/encrypt/encryptor/SARSAEncrypt;->mEncryptKey:Ljava/lang/String;

    return-object p1
.end method

.method public symmetricEncryptType()Ljava/lang/String;
    .registers 2

    const-string v0, "AES"

    return-object v0
.end method
