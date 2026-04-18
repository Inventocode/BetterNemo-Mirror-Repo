.class public abstract Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;
.super Lorg/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DirectRSA"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 379
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    return-void
.end method


# virtual methods
.method doCryptoOperation([B[B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 386
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_24

    .line 387
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_16

    .line 388
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 389
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 388
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result p1

    goto :goto_43

    .line 391
    :cond_16
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 392
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 391
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result p1

    goto :goto_43

    .line 396
    :cond_24
    :try_start_24
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_36

    .line 397
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 398
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 397
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result p1

    goto :goto_43

    .line 400
    :cond_36
    array-length v0, p1

    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 401
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 400
    invoke-static {v0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result p1
    :try_end_43
    .catch Ljava/security/SignatureException; {:try_start_24 .. :try_end_43} :catch_44

    :goto_43
    return p1

    :catch_44
    move-exception p1

    .line 404
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 405
    invoke-virtual {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 406
    throw p2
.end method
