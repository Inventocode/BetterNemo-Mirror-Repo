.class public Lorg/conscrypt/DESEDESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "DESEDESecretKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_54

    .line 41
    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_23

    .line 42
    check-cast p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 44
    :try_start_8
    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_14

    return-object p1

    .line 45
    :cond_14
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "SecretKeySpec is not a parity-adjusted DESEDE key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p1

    .line 49
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 52
    :cond_23
    instance-of v0, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v0, :cond_35

    .line 53
    check-cast p1, Ljavax/crypto/spec/DESedeKeySpec;

    .line 54
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object p1

    const-string v1, "DESEDE"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 56
    :cond_35
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported KeySpec class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_54
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Null KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    if-eqz p1, :cond_5f

    .line 67
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    if-ne p2, v0, :cond_33

    .line 69
    :try_start_6
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result p2
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_f} :catch_2c

    if-eqz p2, :cond_24

    .line 75
    instance-of p2, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p2, :cond_18

    .line 76
    check-cast p1, Ljava/security/spec/KeySpec;

    return-object p1

    .line 78
    :cond_18
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "DESEDE"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 70
    :cond_24
    :try_start_24
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "SecretKey is not a parity-adjusted DESEDE key"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2c
    .catch Ljava/security/InvalidKeyException; {:try_start_24 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception p1

    .line 73
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 80
    :cond_33
    const-class v0, Ljavax/crypto/spec/DESedeKeySpec;

    if-ne p2, v0, :cond_48

    .line 82
    :try_start_37
    new-instance p2, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_40
    .catch Ljava/security/InvalidKeyException; {:try_start_37 .. :try_end_40} :catch_41

    return-object p2

    :catch_41
    move-exception p1

    .line 84
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 87
    :cond_48
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported KeySpec class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_5f
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string p2, "Null SecretKey"

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 96
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 94
    :cond_10
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Null SecretKey"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
