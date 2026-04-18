.class public Lcom/codemao/midi/javax/MetaMessageCM;
.super Lcom/codemao/midi/javax/CMMidiMessage;
.source "MetaMessageCM.java"


# static fields
.field private static final defaultMessage:[B

.field private static final emptyData:[B


# instance fields
.field private dataLength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 22
    fill-array-data v0, :array_e

    sput-object v0, Lcom/codemao/midi/javax/MetaMessageCM;->defaultMessage:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 23
    sput-object v0, Lcom/codemao/midi/javax/MetaMessageCM;->emptyData:[B

    return-void

    :array_e
    .array-data 1
        -0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    sget-object v0, Lcom/codemao/midi/javax/MetaMessageCM;->defaultMessage:[B

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>([B)V

    return-void
.end method

.method protected constructor <init>([B)V
    .registers 5

    .line 41
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/CMMidiMessage;-><init>([B)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    .line 43
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_21

    .line 45
    array-length v0, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    const/4 v0, 0x2

    .line 47
    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_21

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_21

    .line 48
    iget v1, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 53
    :cond_21
    iget v0, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    if-ltz v0, :cond_26

    return-void

    .line 55
    :cond_26
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid meta event. data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultTimeSignatureMsg()Lcom/codemao/midi/javax/MetaMessageCM;
    .registers 5

    .line 75
    new-instance v0, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>()V

    const/4 v1, 0x4

    :try_start_6
    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    const/16 v3, 0x18

    aput-byte v3, v2, v4

    const/4 v3, 0x3

    const/16 v4, 0x8

    aput-byte v4, v2, v3

    const/16 v3, 0x58

    .line 78
    invoke-virtual {v0, v3, v2, v1}, Lcom/codemao/midi/javax/MetaMessageCM;->setMessage(I[BI)V
    :try_end_1d
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_22
    return-object v0
.end method

.method private static getMidiValuesLength(J)I
    .registers 6

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    return v0
.end method

.method public static getTempoData(I)[B
    .registers 5

    int-to-long v0, p0

    const-wide/32 v2, 0x3938700

    .line 71
    div-long/2addr v2, v0

    long-to-int p0, v2

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/codemao/midi/util/MidiUtil;->intToBytes(II)[B

    move-result-object p0

    return-object p0
.end method

.method public static getTempoMsg(I)Lcom/codemao/midi/javax/MetaMessageCM;
    .registers 4

    .line 61
    new-instance v0, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>()V

    const/16 v1, 0x51

    .line 63
    :try_start_7
    invoke-static {p0}, Lcom/codemao/midi/javax/MetaMessageCM;->getTempoData(I)[B

    move-result-object p0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lcom/codemao/midi/javax/MetaMessageCM;->setMessage(I[BI)V
    :try_end_f
    .catch Lcom/codemao/midi/javax/InvalidMidiDataException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    return-object v0
.end method

.method private static writeMidiValues([BIJ)V
    .registers 11

    const/16 v0, 0x3f

    :goto_2
    const/16 v1, 0x7f

    if-lez v0, :cond_13

    shl-int v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_13

    add-int/lit8 v0, v0, -0x7

    goto :goto_2

    :cond_13
    :goto_13
    if-lez v0, :cond_27

    add-int/lit8 v2, p1, 0x1

    shl-int v3, v1, v0

    int-to-long v3, v3

    and-long/2addr v3, p2

    shr-long/2addr v3, v0

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 206
    aput-byte v3, p0, p1

    add-int/lit8 v0, v0, -0x7

    move p1, v2

    goto :goto_13

    :cond_27
    const-wide/16 v0, 0x7f

    and-long/2addr p2, v0

    long-to-int p3, p2

    int-to-byte p2, p3

    .line 209
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    if-nez v0, :cond_c

    .line 169
    new-instance v0, Lcom/codemao/midi/javax/MetaMessageCM;

    sget-object v1, Lcom/codemao/midi/javax/MetaMessageCM;->emptyData:[B

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>([B)V

    return-object v0

    .line 171
    :cond_c
    array-length v1, v0

    new-array v1, v1, [B

    .line 172
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    new-instance v0, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>([B)V

    return-object v0
.end method

.method public getType()I
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    if-eqz v0, :cond_e

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    .line 143
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(I[BI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    const/16 p3, 0x80

    if-ge p1, p3, :cond_32

    if-ltz p1, :cond_32

    if-nez p2, :cond_a

    .line 113
    sget-object p2, Lcom/codemao/midi/javax/MetaMessageCM;->emptyData:[B

    .line 118
    :cond_a
    array-length p3, p2

    int-to-long v0, p3

    invoke-static {v0, v1}, Lcom/codemao/midi/javax/MetaMessageCM;->getMidiValuesLength(J)I

    move-result p3

    const/4 v0, 0x2

    add-int/2addr p3, v0

    .line 119
    array-length v1, p2

    iput v1, p0, Lcom/codemao/midi/javax/MetaMessageCM;->dataLength:I

    .line 120
    array-length v1, p2

    add-int/2addr v1, p3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 124
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    int-to-byte p1, p1

    .line 125
    aput-byte p1, v1, v2

    .line 128
    array-length p1, p2

    int-to-long v4, p1

    invoke-static {v1, v0, v4, v5}, Lcom/codemao/midi/javax/MetaMessageCM;->writeMidiValues([BIJ)V

    .line 131
    array-length p1, p2

    if-lez p1, :cond_31

    .line 132
    iget-object p1, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v0, p2

    invoke-static {p2, v3, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_31
    return-void

    .line 108
    :cond_32
    new-instance p2, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid meta event. type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
