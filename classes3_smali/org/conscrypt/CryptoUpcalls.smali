.class final Lorg/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "CryptoUpcalls.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lorg/conscrypt/CryptoUpcalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ecSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .registers 4

    .line 62
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "NONEwithECDSA"

    .line 67
    invoke-static {p0, p1, v0}, Lorg/conscrypt/CryptoUpcalls;->signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 64
    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 49
    invoke-static {v4}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 50
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 53
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 54
    sget-object v1, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find external provider for algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_38
    return-object v0
.end method

.method static rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4

    const/4 v0, 0x2

    .line 142
    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B
    .registers 9

    const-string v0, "Unsupported cipher algorithm: "

    .line 147
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 149
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected key type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_26
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_49

    const/4 v1, 0x4

    if-eq p1, v1, :cond_46

    .line 167
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_46
    const-string p1, "OAEPPadding"

    goto :goto_4e

    :cond_49
    const-string p1, "NoPadding"

    goto :goto_4e

    :cond_4c
    const-string p1, "PKCS1Padding"

    .line 171
    :goto_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSA/ECB/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    :try_start_5f
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 179
    invoke-virtual {v1, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 182
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v0
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5f .. :try_end_6e} :catch_10b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5f .. :try_end_6e} :catch_f6
    .catch Ljava/security/InvalidKeyException; {:try_start_5f .. :try_end_6e} :catch_71

    if-eqz v0, :cond_7c

    goto :goto_7b

    :catch_71
    move-exception v0

    .line 192
    sget-object v1, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Preferred provider doesn\'t support key:"

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    move-object v1, v3

    :cond_7c
    if-nez v1, :cond_c6

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cipher."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 202
    :try_start_a3
    invoke-static {p1, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 203
    invoke-virtual {v1, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_aa
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a3 .. :try_end_aa} :catch_ab
    .catch Ljava/security/InvalidKeyException; {:try_start_a3 .. :try_end_aa} :catch_ab
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a3 .. :try_end_aa} :catch_ab

    goto :goto_ad

    :catch_ab
    move-object v1, v3

    goto :goto_97

    :cond_ad
    :goto_ad
    if-nez v1, :cond_c6

    .line 214
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not find provider for algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    .line 220
    :cond_c6
    :try_start_c6
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_ca} :catch_cb

    return-object p0

    :catch_cb
    move-exception p2

    .line 222
    sget-object p3, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while decrypting message with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " private key using "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-virtual {p3, v0, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    .line 189
    :catch_f6
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    .line 186
    :catch_10b
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3
.end method

.method static rsaSignDigestWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .registers 4

    const/4 v0, 0x1

    .line 138
    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .registers 8

    const/4 v0, 0x0

    .line 78
    :try_start_1
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 79
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 82
    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v2
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_9c
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_10} :catch_13

    if-eqz v2, :cond_1f

    goto :goto_1e

    :catch_13
    move-exception v1

    .line 89
    sget-object v2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    const-string v3, "Preferred provider doesn\'t support key:"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_1e
    move-object v1, v0

    :cond_1f
    if-nez v1, :cond_71

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 101
    :try_start_47
    invoke-static {p2, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .line 102
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4e} :catch_53
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_4e} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_55

    :catch_4f
    move-exception v1

    if-nez v3, :cond_53

    move-object v3, v1

    :catch_53
    :cond_53
    move-object v1, v0

    goto :goto_3b

    :cond_55
    :goto_55
    if-nez v1, :cond_71

    if-nez v3, :cond_70

    .line 117
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find provider for algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 115
    :cond_70
    throw v3

    .line 124
    :cond_71
    :try_start_71
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_79

    return-object p0

    :catch_79
    move-exception p1

    .line 127
    sget-object p2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while signing message with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " private key:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p2, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 86
    :catch_9c
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported signature algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0
.end method
