.class public abstract Lcom/codemao/midi/javax/CMMidiMessage;
.super Ljava/lang/Object;
.source "CMMidiMessage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected data:[B


# direct methods
.method protected constructor <init>([B)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    return-void
.end method

.method static toHexString([B)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v4, v1, :cond_36

    aget-byte v6, p0, v4

    if-eqz v5, :cond_1f

    const-string v5, ", "

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    new-array v5, v2, [Ljava/lang/Object;

    and-int/lit16 v6, v6, 0xff

    .line 113
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_14

    :cond_36
    const-string p0, "]"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public getLength()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_6
    array-length v0, v0

    return v0
.end method

.method public getMessage()[B
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_6
    array-length v1, v0

    new-array v1, v1, [B

    .line 64
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getStatus()I
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_a

    goto :goto_f

    .line 78
    :cond_a
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_f
    :goto_f
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    invoke-static {v1}, Lcom/codemao/midi/javax/CMMidiMessage;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
