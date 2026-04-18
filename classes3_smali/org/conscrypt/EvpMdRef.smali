.class final Lorg/conscrypt/EvpMdRef;
.super Ljava/lang/Object;
.source "EvpMdRef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/EvpMdRef$SHA512;,
        Lorg/conscrypt/EvpMdRef$SHA384;,
        Lorg/conscrypt/EvpMdRef$SHA256;,
        Lorg/conscrypt/EvpMdRef$SHA224;,
        Lorg/conscrypt/EvpMdRef$SHA1;,
        Lorg/conscrypt/EvpMdRef$MD5;
    }
.end annotation


# static fields
.field static final MGF1_ALGORITHM_NAME:Ljava/lang/String; = "MGF1"

.field static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 77
    sget p0, Lorg/conscrypt/EvpMdRef$SHA256;->SIZE_BYTES:I

    return p0

    :cond_11
    const-string v1, "SHA-512"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 79
    sget p0, Lorg/conscrypt/EvpMdRef$SHA512;->SIZE_BYTES:I

    return p0

    :cond_1c
    const-string v1, "SHA-1"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 81
    sget p0, Lorg/conscrypt/EvpMdRef$SHA1;->SIZE_BYTES:I

    return p0

    :cond_27
    const-string v1, "SHA-384"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 83
    sget p0, Lorg/conscrypt/EvpMdRef$SHA384;->SIZE_BYTES:I

    return p0

    :cond_32
    const-string v1, "SHA-224"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 85
    sget p0, Lorg/conscrypt/EvpMdRef$SHA224;->SIZE_BYTES:I

    return p0

    .line 87
    :cond_3d
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-256"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 59
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    return-wide v0

    :cond_11
    const-string v1, "SHA-512"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 61
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    return-wide v0

    :cond_1c
    const-string v1, "SHA-1"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 63
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    return-wide v0

    :cond_27
    const-string v1, "SHA-384"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 65
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    return-wide v0

    :cond_32
    const-string v1, "SHA-224"

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 67
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    return-wide v0

    .line 69
    :cond_3d
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getJcaDigestAlgorithmStandardName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 34
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHA-256"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "2.16.840.1.101.3.4.2.1"

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_5d

    :cond_17
    const-string v0, "SHA-512"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "2.16.840.1.101.3.4.2.3"

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_5d

    :cond_28
    const-string v0, "SHA-1"

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "1.3.14.3.2.26"

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_5d

    :cond_39
    const-string v0, "SHA-384"

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "2.16.840.1.101.3.4.2.2"

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_5d

    :cond_4a
    const-string v0, "SHA-224"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "2.16.840.1.101.3.4.2.4"

    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    goto :goto_5d

    :cond_5b
    const/4 p0, 0x0

    return-object p0

    :cond_5d
    :goto_5d
    return-object v0
.end method

.method static getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;
    .registers 5

    .line 92
    sget-wide v0, Lorg/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_9

    const-string p0, "MD5"

    return-object p0

    .line 94
    :cond_9
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA1;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_12

    const-string p0, "SHA-1"

    return-object p0

    .line 96
    :cond_12
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA224;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_1b

    const-string p0, "SHA-224"

    return-object p0

    .line 98
    :cond_1b
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA256;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_24

    const-string p0, "SHA-256"

    return-object p0

    .line 100
    :cond_24
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA384;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_2d

    const-string p0, "SHA-384"

    return-object p0

    .line 102
    :cond_2d
    sget-wide v0, Lorg/conscrypt/EvpMdRef$SHA512;->EVP_MD:J

    cmp-long v2, p0, v0

    if-nez v2, :cond_36

    const-string p0, "SHA-512"

    return-object p0

    .line 105
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown EVP_MD reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
