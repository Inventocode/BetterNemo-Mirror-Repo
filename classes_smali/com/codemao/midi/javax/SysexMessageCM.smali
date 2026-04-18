.class public Lcom/codemao/midi/javax/SysexMessageCM;
.super Lcom/codemao/midi/javax/CMMidiMessage;
.source "SysexMessageCM.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 18
    fill-array-data v0, :array_a

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/SysexMessageCM;-><init>([B)V

    return-void

    :array_a
    .array-data 1
        -0x10t
        -0x9t
    .end array-data
.end method

.method protected constructor <init>([B)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/CMMidiMessage;-><init>([B)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 105
    new-instance v0, Lcom/codemao/midi/javax/SysexMessageCM;

    invoke-virtual {p0}, Lcom/codemao/midi/javax/SysexMessageCM;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/SysexMessageCM;-><init>([B)V

    return-object v0
.end method

.method public getData()[B
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 99
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public setMessage(I[BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    const/16 p3, 0xf0

    if-eq p1, p3, :cond_24

    const/16 p3, 0xf7

    if-ne p1, p3, :cond_9

    goto :goto_24

    .line 78
    :cond_9
    new-instance p2, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid status byte for SysexMessageCM: 0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 82
    :cond_24
    :goto_24
    array-length p3, p2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    .line 85
    aput-byte p1, p3, v1

    .line 86
    array-length p1, p2

    if-lez p1, :cond_38

    .line 87
    array-length p1, p2

    invoke-static {p2, v1, p3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    return-void
.end method
