.class public Lcom/codemao/midi/javax/io/StandardMidiFileReader;
.super Lcom/codemao/midi/javax/spi/MidiFileReader;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;,
        Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/codemao/midi/javax/spi/MidiFileReader;-><init>()V

    return-void
.end method

.method private static convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_7

    .line 387
    check-cast p0, Ljava/io/ByteArrayInputStream;

    return-object p0

    .line 390
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2800

    new-array v1, v1, [B

    .line 393
    :goto_10
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1b

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10

    .line 397
    :cond_1b
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method private static processRunningMessage(IILjava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p0, 0xf0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_45

    const/16 v1, 0x90

    if-eq v0, v1, :cond_45

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_45

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_45

    const/16 v1, 0xc0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_20

    goto :goto_45

    .line 370
    :cond_20
    new-instance p2, Lcom/codemao/midi/javax/InvalidMidiDataException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "Invalid data: %02x %02x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 365
    :cond_3c
    new-instance p2, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {p2}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    .line 366
    invoke-virtual {p2, p0, p1, v2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    goto :goto_52

    .line 359
    :cond_45
    :goto_45
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    .line 360
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    move-object p2, v0

    :goto_52
    return-object p2
.end method

.method private static processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Invalid data: %02x"

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_6a

    .line 335
    :pswitch_7  #0xf4, 0xf7, 0xf9, 0xfd
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_19  #0xf6, 0xf8, 0xfa, 0xfb, 0xfc, 0xfe
    if-nez p1, :cond_24

    .line 330
    new-instance p1, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {p1}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    .line 331
    invoke-virtual {p1, p0, v2, v2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    goto :goto_68

    .line 328
    :cond_24
    new-instance p0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 312
    :pswitch_32  #0xf3, 0xf5
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    if-nez p1, :cond_41

    .line 314
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    invoke-virtual {v0, p0, p1, v2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    goto :goto_67

    .line 316
    :cond_41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1, v2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    goto :goto_67

    .line 302
    :pswitch_49  #0xf2
    new-instance v0, Lcom/codemao/midi/javax/ShortMessageCM;

    invoke-direct {v0}, Lcom/codemao/midi/javax/ShortMessageCM;-><init>()V

    if-nez p1, :cond_5c

    .line 304
    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p1

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    goto :goto_67

    .line 306
    :cond_5c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/codemao/midi/javax/ShortMessageCM;->setMessage(III)V

    :goto_67
    move-object p1, v0

    :goto_68
    return-object p1

    nop

    :pswitch_data_6a
    .packed-switch 0xf2
        :pswitch_49  #000000f2
        :pswitch_32  #000000f3
        :pswitch_7  #000000f4
        :pswitch_32  #000000f5
        :pswitch_19  #000000f6
        :pswitch_7  #000000f7
        :pswitch_19  #000000f8
        :pswitch_7  #000000f9
        :pswitch_19  #000000fa
        :pswitch_19  #000000fb
        :pswitch_19  #000000fc
        :pswitch_7  #000000fd
        :pswitch_19  #000000fe
    .end packed-switch
.end method


# virtual methods
.method public getMidiFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/MidiFileFormat;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_7

    .line 110
    check-cast p1, Ljava/io/DataInputStream;

    goto :goto_1b

    .line 111
    :cond_7
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_15

    .line 113
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;

    invoke-static {p1}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1a

    .line 115
    :cond_15
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1a
    move-object p1, v0

    .line 119
    :goto_1b
    :try_start_1b
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_a5

    const v1, 0x4d546864

    const-string v2, "Invalid header"

    if-ne v0, v1, :cond_9f

    .line 123
    :try_start_26
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_99

    .line 128
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    if-ltz v4, :cond_93

    const/4 v3, 0x2

    if-gt v4, v3, :cond_93

    .line 133
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    if-lez v10, :cond_8b

    .line 138
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_74

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    neg-int v2, v2

    const/16 v3, 0x18

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x19

    if-eq v2, v3, :cond_6a

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_66

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_5e

    const/high16 v3, 0x41f00000  # 30.0f

    goto :goto_6f

    .line 158
    :cond_5e
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    const-string v1, "Invalid sequence information"

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    const v3, 0x41efc28f  # 29.97f

    goto :goto_6f

    :cond_6a
    const/high16 v3, 0x41c80000  # 25.0f

    goto :goto_6f

    :cond_6d
    const/high16 v3, 0x41c00000  # 24.0f

    :goto_6f
    and-int/lit16 v2, v2, 0xff

    move v6, v2

    move v5, v3

    goto :goto_79

    :cond_74
    const/4 v3, 0x0

    and-int/lit16 v2, v2, 0x7fff

    move v6, v2

    const/4 v5, 0x0

    :goto_79
    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 166
    invoke-virtual {p1, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 168
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;-><init>(IFIIJI)V
    :try_end_87
    .catchall {:try_start_26 .. :try_end_87} :catchall_a5

    .line 170
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    return-object v0

    .line 135
    :cond_8b
    :try_start_8b
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    const-string v1, "Invalid CMMidiTracks"

    invoke-direct {v0, v1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_93
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    invoke-direct {v0, v2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_99
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    invoke-direct {v0, v2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_9f
    new-instance v0, Lcom/codemao/midi/javax/InvalidMidiDataException;

    invoke-direct {v0, v2}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a5
    .catchall {:try_start_8b .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception v0

    .line 170
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V

    .line 171
    throw v0
.end method

.method public getSequence(Ljava/io/File;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 416
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 418
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_d
    move-exception p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 419
    throw p1
.end method

.method public getSequence(Ljava/io/InputStream;)Lcom/codemao/midi/javax/CMMidiFile;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/InvalidMidiDataException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;

    invoke-static {p1}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->convertToByteArrayInputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 202
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->getMidiFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/MidiFileFormat;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;

    .line 203
    new-instance v1, Lcom/codemao/midi/javax/CMMidiFile;

    invoke-virtual {p1}, Lcom/codemao/midi/javax/MidiFileFormat;->getDivisionType()F

    move-result v2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/MidiFileFormat;->getResolution()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/midi/javax/CMMidiFile;-><init>(FI)V

    .line 205
    invoke-virtual {p1}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;->getNumberTracks()I

    move-result p1

    :goto_20
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_e3

    .line 208
    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiFile;->createAndAddTrack()Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p1

    .line 209
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v4, 0x4d54726b  # 2.2276677E8f

    if-ne v3, v4, :cond_db

    .line 213
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    :goto_3a
    if-eqz v6, :cond_d5

    .line 222
    invoke-virtual {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v9

    add-int/2addr v7, v9

    .line 224
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    const/16 v10, 0x80

    const/16 v11, 0xff

    const/16 v12, 0xf0

    if-ge v9, v10, :cond_7f

    if-ltz v8, :cond_57

    if-ge v8, v12, :cond_57

    .line 229
    invoke-static {v8, v9, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->processRunningMessage(IILjava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;

    move-result-object v9

    goto/16 :goto_ca

    :cond_57
    if-lt v8, v12, :cond_64

    if-gt v8, v11, :cond_64

    .line 231
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;

    move-result-object v9

    goto :goto_ca

    .line 233
    :cond_64
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    const-string v1, "Invalid data: %02x %02x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7f
    if-ge v9, v12, :cond_8d

    .line 237
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    invoke-static {v9, v8, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->processRunningMessage(IILjava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;

    move-result-object v8

    :goto_89
    move v13, v9

    move-object v9, v8

    move v8, v13

    goto :goto_ca

    :cond_8d
    if-eq v9, v12, :cond_b7

    const/16 v8, 0xf7

    if-ne v9, v8, :cond_94

    goto :goto_b7

    :cond_94
    if-ne v9, v11, :cond_b1

    .line 253
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v8

    .line 255
    invoke-virtual {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v9

    .line 256
    new-array v10, v9, [B

    .line 257
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 259
    new-instance v11, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-direct {v11}, Lcom/codemao/midi/javax/MetaMessageCM;-><init>()V

    .line 260
    invoke-virtual {v11, v8, v10, v9}, Lcom/codemao/midi/javax/MetaMessageCM;->setMessage(I[BI)V

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_c8

    const/4 v6, 0x0

    goto :goto_c8

    :cond_b1
    const/4 v8, 0x0

    .line 270
    invoke-static {v9, v8, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader;->processSystemMessage(ILjava/lang/Integer;Ljava/io/DataInput;)Lcom/codemao/midi/javax/ShortMessageCM;

    move-result-object v8

    goto :goto_89

    .line 242
    :cond_b7
    :goto_b7
    invoke-virtual {v0}, Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;->readVariableLengthInt()I

    move-result v8

    .line 243
    new-array v10, v8, [B

    .line 244
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    new-instance v11, Lcom/codemao/midi/javax/SysexMessageCM;

    invoke-direct {v11}, Lcom/codemao/midi/javax/SysexMessageCM;-><init>()V

    .line 247
    invoke-virtual {v11, v9, v10, v8}, Lcom/codemao/midi/javax/SysexMessageCM;->setMessage(I[BI)V

    :cond_c8
    :goto_c8
    move-object v9, v11

    const/4 v8, -0x1

    .line 275
    :goto_ca
    new-instance v10, Lcom/codemao/midi/javax/CMMidiEvent;

    int-to-long v11, v7

    invoke-direct {v10, v9, v11, v12}, Lcom/codemao/midi/javax/CMMidiEvent;-><init>(Lcom/codemao/midi/javax/CMMidiMessage;J)V

    invoke-virtual {p1, v10}, Lcom/codemao/midi/javax/CMMidiTrack;->add(Lcom/codemao/midi/javax/CMMidiEvent;)Z

    goto/16 :goto_3a

    .line 278
    :cond_d5
    invoke-static {p1}, Lcom/codemao/midi/javax/CMMidiTrack$TrackUtils;->sortEvents(Lcom/codemao/midi/javax/CMMidiTrack;)V

    move p1, v2

    goto/16 :goto_20

    .line 210
    :cond_db
    new-instance p1, Lcom/codemao/midi/javax/InvalidMidiDataException;

    const-string v1, "Invalid CMMidiTrack header"

    invoke-direct {p1, v1}, Lcom/codemao/midi/javax/InvalidMidiDataException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e3
    .catchall {:try_start_9 .. :try_end_e3} :catchall_e7

    .line 283
    :cond_e3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    return-object v1

    :catchall_e7
    move-exception p1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 284
    throw p1
.end method
