.class public abstract Lorg/conscrypt/OpenSSLAeadCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLAeadCipher.java"


# static fields
.field static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static lastGlobalMessageSize:I = 0x20


# instance fields
.field private aad:[B

.field buf:[B

.field bufCount:I

.field evpAead:J

.field private mustInitialize:Z

.field private previousIv:[B

.field private previousKey:[B

.field tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .registers 3

    .line 88
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method

.method private arraysAreEqual([B[B)Z
    .registers 8

    .line 101
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    return v2

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    :goto_8
    array-length v3, p1

    if-ge v0, v3, :cond_14

    .line 107
    aget-byte v3, p1, v0

    aget-byte v4, p2, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    if-nez v1, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private checkInitialization()V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    if-nez v0, :cond_5

    return-void

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-use same key and IV for multiple encryptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expand(I)V
    .registers 6

    .line 114
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int v1, v0, p1

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v3, v2

    if-gt v1, v3, :cond_a

    return-void

    :cond_a
    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    .line 118
    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 119
    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iput-object p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    return-void
.end method

.method private reset()V
    .registers 4

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 125
    sget v0, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 126
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-nez v1, :cond_e

    .line 127
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    goto :goto_1d

    .line 128
    :cond_e
    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-lez v2, :cond_1d

    if-eq v2, v0, :cond_1d

    .line 129
    sput v2, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 130
    array-length v0, v1

    if-eq v0, v2, :cond_1d

    .line 131
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    return-void
.end method

.method private throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "javax.crypto.AEADBadTagException"

    .line 261
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_39

    const/4 v2, 0x0

    :try_start_13
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1d} :catch_34
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1d} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_1d} :catch_23

    .line 270
    :try_start_1d
    invoke-virtual {p1, p2}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_20} :catch_21
    .catch Ljava/lang/InstantiationException; {:try_start_1d .. :try_end_20} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_20} :catch_23

    goto :goto_35

    :catch_21
    move-object v2, p1

    goto :goto_34

    :catch_23
    move-exception p1

    .line 276
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-direct {p2}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 277
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 276
    invoke-virtual {p2, p1}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljavax/crypto/BadPaddingException;

    throw p1

    :catch_34
    :goto_34
    move-object p1, v2

    :goto_35
    if-nez p1, :cond_38

    return-void

    .line 280
    :cond_38
    throw p1

    :catch_39
    return-void
.end method


# virtual methods
.method allowsNonceReuse()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 310
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    return-void

    .line 311
    :cond_5
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Must be NoPadding for AEAD ciphers"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method checkSupportedTagLength(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 208
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_5

    return-void

    .line 209
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag length must be a multiple of 8; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method doFinalInternal([BII)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 290
    :try_start_3
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 291
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I

    move-result p1

    goto :goto_34

    .line 294
    :cond_1f
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I

    move-result p1
    :try_end_34
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_34} :catch_41

    .line 301
    :goto_34
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p2

    if-eqz p2, :cond_3d

    const/4 p2, 0x1

    .line 302
    iput-boolean p2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 304
    :cond_3d
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    return p1

    :catch_41
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    throw p1
.end method

.method protected engineDoFinal([BII[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p4, :cond_13

    .line 232
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    array-length v1, p4

    sub-int/2addr v1, p5

    if-gt v0, v1, :cond_b

    goto :goto_13

    .line 233
    :cond_b
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "Insufficient output space"

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_13
    :goto_13
    invoke-super/range {p0 .. p5}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal([BII[BI)I

    move-result p1

    return p1
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x80

    if-nez p2, :cond_6

    goto :goto_1f

    .line 147
    :cond_6
    invoke-static {p2}, Lorg/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 149
    invoke-virtual {v2}, Lorg/conscrypt/GCMParameters;->getIV()[B

    move-result-object v0

    .line 150
    invoke-virtual {v2}, Lorg/conscrypt/GCMParameters;->getTLen()I

    move-result v1

    goto :goto_1f

    .line 151
    :cond_15
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_1f

    .line 152
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .line 153
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 161
    :cond_1f
    :goto_1f
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLAeadCipher;->checkSupportedTagLength(I)V

    .line 163
    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    .line 165
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p2

    .line 167
    array-length v1, p1

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLAeadCipher;->getEVP_AEAD(I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    .line 169
    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v1

    const-string v2, " mode"

    if-nez v0, :cond_65

    if-eqz v1, :cond_65

    if-eqz p2, :cond_49

    .line 176
    new-array v0, v1, [B

    if-eqz p3, :cond_45

    .line 178
    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_ac

    .line 180
    :cond_45
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_ac

    .line 172
    :cond_49
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IV must be specified in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_65
    if-nez v1, :cond_86

    if-nez v0, :cond_6a

    goto :goto_86

    .line 183
    :cond_6a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IV not used in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    :goto_86
    if-eqz v0, :cond_ac

    .line 184
    array-length p2, v0

    if-ne p2, v1, :cond_8c

    goto :goto_ac

    .line 185
    :cond_8c
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected IV length of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_ac
    :goto_ac
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p2

    if-eqz p2, :cond_e0

    if-eqz v0, :cond_e0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->allowsNonceReuse()Z

    move-result p2

    if-nez p2, :cond_e0

    .line 190
    iget-object p2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    if-eqz p2, :cond_dc

    iget-object p3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    if-eqz p3, :cond_dc

    .line 191
    invoke-direct {p0, p2, p1}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result p2

    if-eqz p2, :cond_dc

    iget-object p2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 192
    invoke-direct {p0, p2, v0}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result p2

    if-nez p2, :cond_d1

    goto :goto_dc

    :cond_d1
    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 194
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "When using AEAD key and IV must not be re-used"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_dc
    :goto_dc
    iput-object p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 199
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    :cond_e0
    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 202
    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    .line 203
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    return-void
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 347
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 348
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_13

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 350
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2e

    .line 352
    :cond_13
    array-length v0, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    .line 353
    new-array v0, v0, [B

    .line 354
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v1, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 356
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    :goto_2e
    return-void
.end method

.method protected engineUpdateAAD([BII)V
    .registers 8

    .line 332
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 333
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_f

    add-int/2addr p3, p2

    .line 334
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    goto :goto_20

    .line 336
    :cond_f
    array-length v1, v0

    add-int/2addr v1, p3

    .line 337
    new-array v1, v1, [B

    .line 338
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v0, v0

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    :goto_20
    return-void
.end method

.method abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method getOutputSizeForFinal(I)I
    .registers 5

    .line 325
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    .line 326
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-wide v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    add-int/2addr v0, p1

    return v0
.end method

.method getOutputSizeForUpdate(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method updateInternal([BII[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 243
    iget-object p4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-eqz p4, :cond_1e

    .line 247
    array-length p4, p1

    invoke-static {p4, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    if-lez p3, :cond_1c

    .line 249
    invoke-direct {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->expand(I)V

    .line 250
    iget-object p4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget p5, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    :cond_1c
    const/4 p1, 0x0

    return p1

    .line 244
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cipher not initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
