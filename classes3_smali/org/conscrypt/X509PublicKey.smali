.class final Lorg/conscrypt/X509PublicKey;
.super Ljava/lang/Object;
.source "X509PublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x777d6c0a72acebaaL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/conscrypt/X509PublicKey;->encoded:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 74
    :cond_8
    const-class v2, Lorg/conscrypt/X509PublicKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    .line 76
    :cond_11
    check-cast p1, Lorg/conscrypt/X509PublicKey;

    .line 77
    iget-object v2, p0, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 78
    iget-object v2, p1, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-eqz v2, :cond_25

    return v1

    .line 80
    :cond_1c
    iget-object v3, p1, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 82
    :cond_25
    iget-object v2, p0, Lorg/conscrypt/X509PublicKey;->encoded:[B

    iget-object p1, p1, Lorg/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    :cond_30
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/conscrypt/X509PublicKey;->encoded:[B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "X.509"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 63
    iget-object v0, p0, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-object v1, p0, Lorg/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X509PublicKey [algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/conscrypt/X509PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", encoded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/conscrypt/X509PublicKey;->encoded:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
