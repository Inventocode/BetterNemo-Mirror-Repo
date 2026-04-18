.class public Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# instance fields
.field private hLen:I

.field private mac:Ljavax/crypto/Mac;

.field private macAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    .line 37
    :try_start_5
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    .line 38
    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    iput p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public doFinal()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public doFinal([B)[B
    .registers 3

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method public getHLen()I
    .registers 2

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I

    return v0
.end method

.method public init([B)V
    .registers 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_c
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public update([BII)V
    .registers 5

    .line 74
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
