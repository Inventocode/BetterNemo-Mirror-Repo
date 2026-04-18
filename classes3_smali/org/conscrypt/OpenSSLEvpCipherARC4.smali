.class public Lorg/conscrypt/OpenSSLEvpCipherARC4;
.super Lorg/conscrypt/OpenSSLEvpCipher;
.source "OpenSSLEvpCipherARC4.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSSLEvpCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    return-void
.end method

.method checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 46
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_24

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_9

    goto :goto_24

    .line 47
    :cond_9
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    :goto_24
    return-void
.end method

.method checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    return-void

    .line 54
    :cond_5
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getBaseCipherName()Ljava/lang/String;
    .registers 2

    const-string v0, "ARCFOUR"

    return-object v0
.end method

.method getCipherBlockSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
    .registers 3

    const-string p1, "rc4"

    return-object p1
.end method

.method supportsVariableSizeKey()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
