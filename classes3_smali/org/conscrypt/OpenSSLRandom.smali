.class public final Lorg/conscrypt/OpenSSLRandom;
.super Ljava/security/SecureRandomSpi;
.source "OpenSSLRandom.java"


# static fields
.field private static final serialVersionUID:J = 0x760c2179bb8f6dadL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .registers 2

    .line 45
    new-array p1, p1, [B

    .line 46
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .registers 2

    .line 40
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    return-void
.end method

.method protected engineSetSeed([B)V
    .registers 3

    const-string v0, "seed == null"

    .line 34
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
