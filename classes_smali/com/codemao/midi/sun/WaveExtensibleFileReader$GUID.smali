.class Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;
.super Ljava/lang/Object;
.source "WaveExtensibleFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/WaveExtensibleFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GUID"
.end annotation


# instance fields
.field i1:J

.field s1:I

.field s2:I

.field x1:I

.field x2:I

.field x3:I

.field x4:I

.field x5:I

.field x6:I

.field x7:I

.field x8:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JIIIIIIIIII)V
    .registers 13

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-wide p1, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->i1:J

    .line 80
    iput p3, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s1:I

    .line 81
    iput p4, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s2:I

    .line 82
    iput p5, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x1:I

    .line 83
    iput p6, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x2:I

    .line 84
    iput p7, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x3:I

    .line 85
    iput p8, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x4:I

    .line 86
    iput p9, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x5:I

    .line 87
    iput p10, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x6:I

    .line 88
    iput p11, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x7:I

    .line 89
    iput p12, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x8:I

    return-void
.end method

.method public static read(Lcom/codemao/midi/sun/RIFFReader;)Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    invoke-direct {v0}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->i1:J

    .line 95
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s1:I

    .line 96
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s2:I

    .line 97
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x1:I

    .line 98
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x2:I

    .line 99
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x3:I

    .line 100
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x4:I

    .line 101
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x5:I

    .line 102
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x6:I

    .line 103
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x7:I

    .line 104
    invoke-virtual {p0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result p0

    iput p0, v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x8:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 113
    instance-of v0, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 115
    :cond_6
    check-cast p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    .line 116
    iget-wide v2, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->i1:J

    iget-wide v4, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->i1:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    return v1

    .line 118
    :cond_11
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s1:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s1:I

    if-eq v0, v2, :cond_18

    return v1

    .line 120
    :cond_18
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s2:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->s2:I

    if-eq v0, v2, :cond_1f

    return v1

    .line 122
    :cond_1f
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x1:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x1:I

    if-eq v0, v2, :cond_26

    return v1

    .line 124
    :cond_26
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x2:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x2:I

    if-eq v0, v2, :cond_2d

    return v1

    .line 126
    :cond_2d
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x3:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x3:I

    if-eq v0, v2, :cond_34

    return v1

    .line 128
    :cond_34
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x4:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x4:I

    if-eq v0, v2, :cond_3b

    return v1

    .line 130
    :cond_3b
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x5:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x5:I

    if-eq v0, v2, :cond_42

    return v1

    .line 132
    :cond_42
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x6:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x6:I

    if-eq v0, v2, :cond_49

    return v1

    .line 134
    :cond_49
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x7:I

    iget v2, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x7:I

    if-eq v0, v2, :cond_50

    return v1

    .line 136
    :cond_50
    iget v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x8:I

    iget p1, p1, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->x8:I

    if-eq v0, p1, :cond_57

    return v1

    :cond_57
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->i1:J

    long-to-int v1, v0

    return v1
.end method
