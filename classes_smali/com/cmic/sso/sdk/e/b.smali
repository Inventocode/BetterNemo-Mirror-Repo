.class public Lcom/cmic/sso/sdk/e/b;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/b;->b(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/e/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, "AES_KEY"

    invoke-static {v0, p0}, Lcom/cmic/sso/sdk/e/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const-string v3, "CMCC_SDK"

    const-string v4, "KeystoreUtil"

    const-string v5, "AndroidKeyStore"

    const-string v6, "RSA"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x17

    if-lt v0, v9, :cond_4f

    :try_start_12
    invoke-static {v6, v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v3, "SHA-256"

    const-string v5, "SHA-512"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v3, "PKCS1Padding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_45} :catch_46

    return v8

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0x1e

    invoke-virtual {v10, v8, v11}, Ljava/util/Calendar;->add(II)V

    const/16 v11, 0x12

    if-lt v0, v11, :cond_9c

    :try_start_60
    new-instance v0, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v0, p0}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v3, "CN=CMCC_SDK"

    invoke-direct {v0, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p0

    invoke-static {v6, v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_9b} :catch_46

    return v8

    :cond_9c
    return v7
.end method

.method public static a(Landroid/content/Context;Z)Z
    .registers 4

    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v1, "CMCC_SDK"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_14

    if-eqz v0, :cond_18

    const/4 p0, 0x1

    return p0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    if-eqz p1, :cond_1f

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/b;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private static a()[B
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 2

    const-string v0, "AES_KEY"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/cmic/sso/sdk/e/b;->b(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/e/a;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)[B
    .registers 7

    const-class v0, Lcom/cmic/sso/sdk/e/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-static {}, Lcom/cmic/sso/sdk/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_45

    invoke-static {p0, v4}, Lcom/cmic/sso/sdk/e/b;->a(Landroid/content/Context;Z)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_71
    .catchall {:try_start_4 .. :try_end_1c} :catchall_6f

    if-nez p0, :cond_20

    monitor-exit v0

    return-object v1

    :cond_20
    :try_start_20
    invoke-static {}, Lcom/cmic/sso/sdk/e/b;->a()[B

    move-result-object p0

    const-string v3, "CMCC_SDK"

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmic/sso/sdk/e/b;->a(Ljava/lang/String;)V

    move-object v1, p0

    goto :goto_6d

    :cond_45
    invoke-static {}, Lcom/cmic/sso/sdk/e/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v3, "CMCC_SDK"

    invoke-virtual {v2, v3, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    check-cast v2, Ljava/security/PrivateKey;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5b} :catch_71
    .catchall {:try_start_20 .. :try_end_5b} :catchall_6f

    if-nez v2, :cond_5f

    monitor-exit v0

    return-object v1

    :cond_5f
    :try_start_5f
    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_71
    .catchall {:try_start_5f .. :try_end_6d} :catchall_6f

    :cond_6d
    :goto_6d
    monitor-exit v0

    return-object v1

    :catchall_6f
    move-exception p0

    goto :goto_77

    :catch_71
    move-exception p0

    :try_start_72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6f

    monitor-exit v0

    return-object v1

    :goto_77
    monitor-exit v0

    throw p0
.end method
