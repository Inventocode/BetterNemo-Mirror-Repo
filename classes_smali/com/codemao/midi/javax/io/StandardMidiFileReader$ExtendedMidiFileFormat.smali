.class Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;
.super Lcom/codemao/midi/javax/MidiFileFormat;
.source "StandardMidiFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/io/StandardMidiFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtendedMidiFileFormat"
.end annotation


# instance fields
.field private final numberOfTracks:I


# direct methods
.method public constructor <init>(IFIIJI)V
    .registers 8

    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/codemao/midi/javax/MidiFileFormat;-><init>(IFIIJ)V

    .line 64
    iput p7, p0, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;->numberOfTracks:I

    return-void
.end method


# virtual methods
.method public getNumberTracks()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/codemao/midi/javax/io/StandardMidiFileReader$ExtendedMidiFileFormat;->numberOfTracks:I

    return v0
.end method
