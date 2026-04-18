.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected hashAlgorithm:Ljava/lang/String;

.field protected iterationCount:I

.field protected salt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 40
    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .registers 6

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 48
    iput p4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getHashAlgorithm()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getIterationCount()I
    .registers 2

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    return-object v0
.end method
