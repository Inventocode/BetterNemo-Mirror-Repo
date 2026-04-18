.class public abstract Lorg/conscrypt/OpenSSLAeadCipherAES;
.super Lorg/conscrypt/OpenSSLAeadCipher;
.source "OpenSSLAeadCipherAES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM_SIV;,
        Lorg/conscrypt/OpenSSLAeadCipherAES$GCM;
    }
.end annotation


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10


# direct methods
.method constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLAeadCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_25

    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    goto :goto_25

    .line 41
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes (must be 16 or 32)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    return-void
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .line 72
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 76
    :cond_6
    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2, v0}, Lorg/conscrypt/Platform;->toGCMParameterSpec(I[B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-nez v0, :cond_15

    .line 82
    invoke-super {p0}, Lorg/conscrypt/OpenSSLCipher;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0

    :cond_15
    :try_start_15
    const-string v2, "GCM"

    .line 86
    invoke-static {v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 87
    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1e} :catch_20
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_15 .. :try_end_1e} :catch_1f

    return-object v2

    :catch_1f
    return-object v1

    :catch_20
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "GCM not supported"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method getBaseCipherName()Ljava/lang/String;
    .registers 2

    const-string v0, "AES"

    return-object v0
.end method

.method getCipherBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method getOutputSizeForFinal(I)I
    .registers 4

    .line 103
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 104
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    add-int/2addr v0, p1

    return v0

    :cond_d
    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v1, p1

    iget p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    sub-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 60
    invoke-static {p1}, Lorg/conscrypt/Platform;->fromGCMParameters(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 64
    :cond_9
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method
