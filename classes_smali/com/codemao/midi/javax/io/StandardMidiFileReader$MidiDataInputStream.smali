.class Lcom/codemao/midi/javax/io/StandardMidiFileReader$MidiDataInputStream;
.super Ljava/io/DataInputStream;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/io/StandardMidiFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MidiDataInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readVariableLengthInt()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_17

    and-int/lit8 v0, v0, 0x7f

    :cond_a
    shl-int/lit8 v0, v0, 0x7

    .line 97
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit8 v2, v1, 0x7f

    add-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_a

    :cond_17
    return v0
.end method
