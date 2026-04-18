.class public Lorg/conscrypt/OpenSSLSignatureRawECDSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawECDSA.java"


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private key:Lorg/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private static verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    const/16 v1, 0x198

    if-ne v0, v1, :cond_d

    return-object p0

    .line 63
    :cond_d
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "Non-EC key used to initialize EC signature."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    return-void
.end method

.method protected engineSign()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_46

    .line 90
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->ECDSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 91
    new-array v1, v0, [B

    .line 93
    :try_start_e
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 94
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/conscrypt/NativeCrypto;->ECDSA_sign([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v2

    if-ltz v2, :cond_2f

    if-eq v2, v0, :cond_29

    .line 102
    new-array v0, v2, [B

    const/4 v3, 0x0

    .line 103
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_39
    .catchall {:try_start_e .. :try_end_28} :catchall_37

    move-object v1, v0

    .line 110
    :cond_29
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v1

    .line 96
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Could not compute signature."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_39
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    goto :goto_40

    :catch_39
    move-exception v0

    .line 108
    :try_start_3a
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_37

    .line 110
    :goto_40
    iget-object v1, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v0

    .line 87
    :cond_46
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "No key provided"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(B)V
    .registers 3

    .line 46
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5

    .line 51
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method protected engineVerify([B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_39

    .line 122
    :try_start_4
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 123
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/conscrypt/NativeCrypto;->ECDSA_verify([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_2c
    .catchall {:try_start_4 .. :try_end_14} :catchall_2a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 131
    :goto_1c
    iget-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return v0

    .line 125
    :cond_22
    :try_start_22
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "Could not verify signature."

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2c
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p1

    goto :goto_33

    :catch_2c
    move-exception p1

    .line 129
    :try_start_2d
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    .line 131
    :goto_33
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw p1

    .line 118
    :cond_39
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "No key provided"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
