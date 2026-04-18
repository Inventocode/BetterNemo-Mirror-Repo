.class public Lorg/conscrypt/OpenSSLCipherRSA$OAEP;
.super Lorg/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA512;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA256;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;
    }
.end annotation


# instance fields
.field private label:[B

.field private mgf1Md:J

.field private oaepMd:J

.field private oaepMdSizeBytes:I

.field private pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;


# direct methods
.method public constructor <init>(JI)V
    .registers 5

    const/4 v0, 0x4

    .line 436
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 437
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    iput-wide p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 438
    iput p3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    return-void
.end method

.method private readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 559
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    const-string v3, "MGF1"

    .line 560
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v3, "1.2.840.113549.1.1.8"

    .line 561
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    :cond_1e
    instance-of v0, v2, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v0, :cond_6e

    .line 567
    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 568
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 570
    :try_start_2c
    invoke-static {v0}, Lorg/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 572
    invoke-static {v0}, Lorg/conscrypt/EvpMdRef;->getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    .line 574
    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Lorg/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J
    :try_end_42
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c .. :try_end_42} :catch_67

    .line 579
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PSpecified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    instance-of v0, p1, Ljavax/crypto/spec/PSource$PSpecified;

    if-eqz v0, :cond_5f

    .line 585
    check-cast p1, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p1}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    return-void

    .line 582
    :cond_5f
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Only PSpecified accepted for PSource"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_67
    move-exception p1

    .line 576
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 563
    :cond_6e
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Only MGF1 supported as mask generation function"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 530
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v1, :cond_11

    .line 531
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_encrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    goto :goto_1b

    .line 532
    :cond_11
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_decrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    :goto_1b
    invoke-direct {v0, v1, v2}, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    .line 534
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_29

    .line 535
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 538
    :cond_29
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, p1, Lorg/conscrypt/NativeRef;->address:J

    const/4 p1, 0x4

    invoke-static {v0, v1, p1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 540
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, p1, Lorg/conscrypt/NativeRef;->address:J

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v0, v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V

    .line 541
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, p1, Lorg/conscrypt/NativeRef;->address:J

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    invoke-static {v0, v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 542
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-eqz p1, :cond_51

    array-length v0, p1

    if-lez v0, :cond_51

    .line 543
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef;->address:J

    invoke-static {v0, v1, p1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V

    :cond_51
    return-void
.end method

.method doCryptoOperation([B[B)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 591
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_10

    .line 592
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, p1

    move-object v2, p2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_encrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result p1

    return p1

    .line 594
    :cond_10
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_decrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result p1

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 9

    .line 443
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    :try_start_8
    const-string v0, "OAEP"

    .line 448
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-nez v1, :cond_15

    .line 452
    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    goto :goto_1c

    .line 454
    :cond_15
    new-instance v1, Ljavax/crypto/spec/PSource$PSpecified;

    iget-object v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    .line 457
    :goto_1c
    new-instance v2, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-wide v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 458
    invoke-static {v3, v4}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    iget-wide v6, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    .line 461
    invoke-static {v6, v7}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 457
    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_37} :catch_40
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_8 .. :try_end_37} :catch_38

    return-object v0

    .line 468
    :catch_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No providers of AlgorithmParameters.OAEP available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_40
    move-exception v0

    .line 466
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "OAEP not supported"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_14

    .line 502
    :try_start_2
    const-class p4, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, p4}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    check-cast p3, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_a
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_15

    :catch_b
    move-exception p1

    .line 504
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    const-string p3, "Only OAEP parameters are supported"

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_14
    const/4 p3, 0x0

    .line 509
    :goto_15
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_f

    .line 487
    instance-of p4, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz p4, :cond_7

    goto :goto_f

    .line 488
    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Only OAEPParameterSpec accepted in OAEP mode"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 492
    :cond_f
    :goto_f
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_1a

    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    .line 520
    :cond_d
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_12

    goto :goto_1e

    .line 521
    :cond_12
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Only private keys may be used to decrypt"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :cond_1a
    :goto_1a
    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_22

    .line 524
    :cond_1e
    :goto_1e
    invoke-super {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    .line 517
    :cond_22
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Only public keys may be used to encrypt"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 474
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OAEPPADDING"

    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x4

    .line 476
    iput p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void

    .line 480
    :cond_12
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Only OAEP padding is supported"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method paddedBlockSizeBytes()I
    .registers 3

    .line 549
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 553
    iget v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
