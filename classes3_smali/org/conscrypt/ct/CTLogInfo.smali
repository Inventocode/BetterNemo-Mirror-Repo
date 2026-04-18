.class public Lorg/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "SHA-256"

    .line 42
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 43
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_13} :catch_1a

    .line 49
    iput-object p1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 50
    iput-object p2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-void

    :catch_1a
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 78
    :cond_4
    instance-of v1, p1, Lorg/conscrypt/ct/CTLogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 82
    :cond_a
    check-cast p1, Lorg/conscrypt/ct/CTLogInfo;

    .line 83
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v3, p1, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v3, p1, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()[B
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 92
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .registers 5

    .line 107
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    .line 113
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lorg/conscrypt/ct/CertificateEntry;)[B

    move-result-object p2
    :try_end_15
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_11 .. :try_end_15} :catch_4a

    .line 120
    :try_start_15
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_21} :catch_47

    .line 127
    :try_start_21
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_26
    .catch Ljava/security/InvalidKeyException; {:try_start_21 .. :try_end_26} :catch_44

    .line 133
    :try_start_26
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 134
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object p1

    invoke-virtual {p1}, Lorg/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 135
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    .line 137
    :cond_3a
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3c
    .catch Ljava/security/SignatureException; {:try_start_26 .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 141
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 129
    :catch_44
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    .line 123
    :catch_47
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1

    .line 115
    :catch_4a
    sget-object p1, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    return-object p1
.end method
