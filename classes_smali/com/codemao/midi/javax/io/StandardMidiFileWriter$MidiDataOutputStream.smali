.class Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "StandardMidiFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/io/StandardMidiFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MidiDataOutputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$000(I)I
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->variableLengthIntLength(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->writeVariableLengthInt(I)V

    return-void
.end method

.method private static getValueToWrite(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x7f

    :goto_2
    shr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_e

    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 v1, p0, 0x7f

    or-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    goto :goto_2

    :cond_e
    return v0
.end method

.method private static variableLengthIntLength(I)I
    .registers 3

    .line 65
    invoke-static {p0}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->getValueToWrite(I)I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_e

    ushr-int/lit8 p0, p0, 0x8

    goto :goto_5

    :cond_e
    return v0
.end method

.method private writeVariableLengthInt(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/codemao/midi/javax/io/StandardMidiFileWriter$MidiDataOutputStream;->getValueToWrite(I)I

    move-result p1

    :goto_4
    and-int/lit16 v0, p1, 0xff

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_10

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_4

    :cond_10
    return-void
.end method
