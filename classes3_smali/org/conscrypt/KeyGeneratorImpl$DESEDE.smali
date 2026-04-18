.class public final Lorg/conscrypt/KeyGeneratorImpl$DESEDE;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DESEDE"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "DESEDE"

    const/16 v1, 0xc0

    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .registers 3

    const/16 v0, 0x70

    if-eq p1, v0, :cond_11

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_9

    goto :goto_11

    .line 131
    :cond_9
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "Key size must be either 112 or 168 bits"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_11
    return-void
.end method

.method protected doKeyGeneration(I)[B
    .registers 7

    const/16 v0, 0x18

    new-array v1, v0, [B

    .line 138
    iget-object v2, p0, Lorg/conscrypt/KeyGeneratorImpl;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_21

    .line 141
    aget-byte v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1e

    .line 142
    aget-byte v4, v1, v3

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_21
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2c

    const/16 p1, 0x10

    const/16 v0, 0x8

    .line 147
    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    return-object v1
.end method
