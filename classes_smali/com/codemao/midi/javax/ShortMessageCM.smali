.class public Lcom/codemao/midi/javax/ShortMessageCM;
.super Lcom/codemao/midi/javax/CMMidiMessage;
.source "ShortMessageCM.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 39
    fill-array-data v0, :array_a

    invoke-direct {p0, v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>([B)V

    return-void

    :array_a
    .array-data 1
        -0x70t
        0x40t
        0x7ft
    .end array-data
.end method

.method protected constructor <init>([B)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/CMMidiMessage;-><init>([B)V

    return-void
.end method

.method protected static getDataLength(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_42

    :pswitch_5  #0xf4, 0xf5
    and-int/lit16 v2, p0, 0xf0

    goto :goto_c

    :pswitch_8  #0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xfb, 0xfc, 0xfd, 0xfe, 0xff
    const/4 p0, 0x0

    return p0

    :pswitch_a  #0xf2
    return v0

    :pswitch_b  #0xf1, 0xf3
    return v1

    :goto_c
    const/16 v3, 0x80

    if-eq v2, v3, :cond_41

    const/16 v3, 0x90

    if-eq v2, v3, :cond_41

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_41

    const/16 v3, 0xb0

    if-eq v2, v3, :cond_41

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_40

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_40

    const/16 v1, 0xe0

    if-ne v2, v1, :cond_29

    goto :goto_41

    .line 247
    :cond_29
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    return v1

    :cond_41
    :goto_41
    return v0

    :pswitch_data_42
    .packed-switch 0xf1
        :pswitch_b  #000000f1
        :pswitch_a  #000000f2
        :pswitch_b  #000000f3
        :pswitch_5  #000000f4
        :pswitch_5  #000000f5
        :pswitch_8  #000000f6
        :pswitch_8  #000000f7
        :pswitch_8  #000000f8
        :pswitch_8  #000000f9
        :pswitch_8  #000000fa
        :pswitch_8  #000000fb
        :pswitch_8  #000000fc
        :pswitch_8  #000000fd
        :pswitch_8  #000000fe
        :pswitch_8  #000000ff
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 204
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0, v2}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>([B)V

    return-object v0
.end method

.method public getChannel()I
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/codemao/midi/javax/CMMidiMessage;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getCommand()I
    .registers 2

    .line 174
    invoke-virtual {p0}, Lcom/codemao/midi/javax/CMMidiMessage;->getStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public getData1()I
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    .line 184
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getData2()I
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_b

    .line 196
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setMessage(III)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    .line 114
    invoke-static {p1}, Lcom/codemao/midi/javax/ShortMessageCM;->getDataLength(I)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_42

    if-ltz p2, :cond_2b

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_2b

    if-le v0, v1, :cond_42

    if-ltz p3, :cond_14

    if-gt p3, v2, :cond_14

    goto :goto_42

    .line 121
    :cond_14
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data2 out of range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_2b
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data1 out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    if-eqz v2, :cond_4b

    array-length v2, v2

    add-int/lit8 v3, v0, 0x1

    if-eq v2, v3, :cond_50

    :cond_4b
    add-int/2addr v0, v1

    .line 127
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    .line 129
    :cond_50
    iget-object v0, p0, Lcom/codemao/midi/javax/CMMidiMessage;->data:[B

    array-length v2, v0

    const/4 v2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 131
    aput-byte p1, v0, v2

    .line 132
    array-length p1, v0

    if-le p1, v1, :cond_6a

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    .line 133
    aput-byte p1, v0, v1

    .line 134
    array-length p1, v0

    const/4 p2, 0x2

    if-le p1, p2, :cond_6a

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 135
    aput-byte p1, v0, p2

    :cond_6a
    return-void
.end method

.method public setMessage(IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;
        }
    .end annotation

    const/16 v0, 0xf0

    if-ge p1, v0, :cond_2a

    const/16 v1, 0x80

    if-lt p1, v1, :cond_2a

    const/16 v1, 0xf

    if-gt p2, v1, :cond_13

    and-int/2addr p1, v0

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 156
    invoke-virtual {p0, p1, p3, p4}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    return-void

    .line 154
    :cond_13
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "channel out of range: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_2a
    new-instance p2, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "command out of range: 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
