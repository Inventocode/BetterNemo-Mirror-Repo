.class public Lcom/codemao/midi/javax/io/StandardMidiFileWriter;
.super Lcom/codemao/midi/javax/spi/MidiFileWriter;
.source "StandardMidiFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lcom/codemao/midi/javax/spi/MidiFileWriter;-><init>()V

    return-void
.end method

.method private static writeTrack(Lcom/codemao/midi/javax/CMMidiTrack;Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/codemao/midi/javax/CMMidiTrack;->size()I

    move-result v0

    const v1, 0x4d54726b  # 2.2276677E8f

    .line 185
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide v7, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_11
    if-ge v5, v0, :cond_30

    .line 192
    invoke-virtual {p0, v5}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v9

    sub-long v7, v9, v7

    long-to-int v8, v7

    .line 194
    invoke-static {v8}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->access$000(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 197
    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/midi/javax/CMMidiMessage;->getLength()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    move-wide v7, v9

    goto :goto_11

    :cond_30
    const/16 v5, 0x2f

    if-eqz v4, :cond_4a

    .line 202
    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v7

    instance-of v7, v7, Lcom/codemao/midi/javax/MetaMessageCM;

    if-eqz v7, :cond_4a

    .line 203
    invoke-virtual {v4}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v4

    check-cast v4, Lcom/codemao/midi/javax/MetaMessageCM;

    invoke-virtual {v4}, Lcom/codemao/midi/javax/MetaMessageCM;->getType()I

    move-result v4

    if-ne v4, v5, :cond_4a

    const/4 v4, 0x0

    goto :goto_4d

    :cond_4a
    add-int/lit8 v6, v6, 0x4

    const/4 v4, 0x1

    .line 208
    :goto_4d
    invoke-virtual {p1, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v7, 0x0

    :goto_51
    if-ge v7, v0, :cond_78

    .line 213
    invoke-virtual {p0, v7}, Lcom/codemao/midi/javax/CMMidiTrack;->get(I)Lcom/codemao/midi/javax/CMMidiEvent;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Lcom/codemao/midi/javax/CMMidiEvent;->getTick()J

    move-result-wide v9

    sub-long v1, v9, v1

    long-to-int v2, v1

    .line 215
    invoke-static {p1, v2}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->access$100(Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    .line 218
    invoke-virtual {v8}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/CMMidiMessage;->getMessage()[B

    move-result-object v1

    invoke-virtual {v8}, Lcom/codemao/midi/javax/CMMidiEvent;->getMessage()Lcom/codemao/midi/javax/CMMidiMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/midi/javax/CMMidiMessage;->getLength()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/lit8 v7, v7, 0x1

    move-wide v1, v9

    goto :goto_51

    :cond_78
    if-eqz v4, :cond_88

    .line 223
    invoke-static {p1, v3}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->access$100(Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    const/16 p0, 0xff

    .line 224
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 225
    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 226
    invoke-static {p1, v3}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->access$100(Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;I)V

    :cond_88
    add-int/lit8 v6, v6, 0x4

    return v6
.end method


# virtual methods
.method public write(Lcom/codemao/midi/javax/CMMidiFile;ILjava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;

    invoke-direct {v0, p3}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p3

    const v1, 0x4d546864

    .line 139
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v1, 0x6

    .line 140
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 141
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    array-length p2, p3

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 144
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getDivisionType()F

    move-result p2

    .line 145
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getResolution()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_2b

    and-int/lit16 p1, p1, 0x7fff

    goto :goto_59

    :cond_2b
    const/high16 v2, 0x41c00000  # 24.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_36

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, -0x1800

    goto :goto_59

    :cond_36
    const/high16 v2, 0x41c80000  # 25.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_41

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, -0x1900

    goto :goto_59

    :cond_41
    const v2, 0x41efc28f  # 29.97f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_4d

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, -0x1d00

    goto :goto_59

    :cond_4d
    const/high16 v2, 0x41f00000  # 30.0f

    cmpl-float p2, p2, v2

    if-nez p2, :cond_58

    and-int/lit16 p1, p1, 0xff

    add-int/lit16 p1, p1, -0x1e00

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    .line 162
    :goto_59
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 165
    array-length p1, p3

    const/4 p2, 0x0

    :goto_5e
    if-ge v1, p1, :cond_6a

    aget-object v2, p3, v1

    .line 166
    invoke-static {v2, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;->writeTrack(Lcom/codemao/midi/javax/CMMidiTrack;Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 169
    :cond_6a
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    add-int/lit8 p2, p2, 0xe

    return p2
.end method

.method public write(Lcom/codemao/midi/javax/CMMidiFile;Ljava/io/File;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 129
    invoke-virtual {p1}, Lcom/codemao/midi/javax/CMMidiFile;->getCMMidiTracks()[Lcom/codemao/midi/javax/CMMidiTrack;

    move-result-object p2

    array-length p2, p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter;->write(Lcom/codemao/midi/javax/CMMidiFile;ILjava/io/OutputStream;)I

    move-result p1

    .line 130
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return p1
.end method
