.class public final Lorg/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 64
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v0, :cond_e

    .line 65
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;

    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    return-object v0

    .line 66
    :cond_e
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v0, :cond_1a

    .line 67
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    return-object v0

    .line 68
    :cond_1a
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_26

    .line 69
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 72
    :cond_26
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_45
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "keySpec == null"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_39

    .line 49
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_e

    .line 50
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPublicKey;

    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    return-object v0

    .line 51
    :cond_e
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 52
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_39
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "keySpec == null"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_234

    if-eqz p2, :cond_22c

    .line 87
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 91
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2c

    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 92
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 94
    new-instance p2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 96
    :cond_2c
    instance-of v0, p1, Ljava/security/PublicKey;

    const-string v1, "X.509"

    if-eqz v0, :cond_6b

    const-class v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 97
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    .line 98
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    if-eqz p2, :cond_63

    .line 101
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 102
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 104
    new-instance p2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 99
    :cond_63
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Not a valid X.509 encoding"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_6b
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_a0

    const-class v3, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 107
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 108
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 110
    new-instance p2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 111
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 112
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 113
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    :cond_a0
    if-eqz v2, :cond_ba

    .line 115
    const-class v2, Ljava/security/spec/RSAPrivateKeySpec;

    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 117
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 119
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 121
    :cond_ba
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_d6

    const-class v2, Ljava/security/spec/RSAPrivateKeySpec;

    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 123
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 125
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 127
    :cond_d6
    instance-of v2, p1, Ljava/security/PrivateKey;

    const-string v3, "Not a valid PKCS#8 encoding"

    const-string v4, "PKCS#8"

    if-eqz v2, :cond_13c

    const-class v5, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 128
    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 129
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    .line 130
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_136

    if-eqz p2, :cond_136

    .line 133
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 134
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 135
    instance-of p2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz p2, :cond_12e

    .line 136
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 138
    new-instance p2, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 139
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    .line 140
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 141
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 144
    :cond_12e
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Encoded key is not an RSAPrivateCrtKey"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_136
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13c
    if-eqz v2, :cond_175

    .line 146
    const-class v5, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v5, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_175

    .line 147
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    .line 148
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16f

    if-eqz p2, :cond_16f

    .line 151
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 152
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 154
    new-instance p2, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 149
    :cond_16f
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_175
    const-string v3, "Key is not encodable"

    if-eqz v2, :cond_1b8

    .line 156
    const-class v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 157
    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 158
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    .line 159
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19d

    if-eqz p2, :cond_197

    .line 165
    new-instance p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p1, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p1

    .line 163
    :cond_197
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_19d
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding type must be PKCS#8; was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1b8
    if-eqz v0, :cond_1f9

    .line 167
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 168
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    .line 169
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    if-eqz p2, :cond_1d8

    .line 175
    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p1

    .line 173
    :cond_1d8
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p1, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1de
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding type must be X.509; was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 178
    :cond_1f9
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type and key spec combination; key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", keySpec="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_224
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Key must be a RSA key"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_22c
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "keySpec == null"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_234
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_fe

    .line 189
    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    if-nez v0, :cond_fd

    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_c

    goto/16 :goto_fd

    .line 191
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2b

    .line 192
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 195
    :try_start_12
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 196
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 195
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_23
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_12 .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception p1

    .line 198
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 200
    :cond_2b
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_63

    .line 201
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 202
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 203
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 204
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 205
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    .line 206
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 207
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    .line 208
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 209
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    .line 212
    :try_start_51
    new-instance p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_5b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_51 .. :try_end_5b} :catch_5c

    return-object p1

    :catch_5c
    move-exception p1

    .line 216
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_63
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_82

    .line 219
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 220
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    .line 224
    :try_start_71
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, v0, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_7a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_71 .. :try_end_7a} :catch_7b

    return-object p1

    :catch_7b
    move-exception p1

    .line 226
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 228
    :cond_82
    instance-of v0, p1, Ljava/security/PrivateKey;

    const-string v1, "Key does not support encoding"

    if-eqz v0, :cond_b1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PKCS#8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 229
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 234
    :try_start_9a
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_a3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9a .. :try_end_a3} :catch_a4

    return-object p1

    :catch_a4
    move-exception p1

    .line 236
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 231
    :cond_ab
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_b1
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_de

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X.509"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 239
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    if-eqz p1, :cond_d8

    .line 244
    :try_start_c7
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_d0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_c7 .. :try_end_d0} :catch_d1

    return-object p1

    :catch_d1
    move-exception p1

    .line 246
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 241
    :cond_d8
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_de
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key must be an RSA public or private key; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fd
    :goto_fd
    return-object p1

    .line 186
    :cond_fe
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
