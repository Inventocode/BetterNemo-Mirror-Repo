.class public Lcom/codemao/midi/sun/SoftAudioBuffer;
.super Ljava/lang/Object;
.source "SoftAudioBuffer.java"


# instance fields
.field private buffer:[F

.field private converter:Lcom/codemao/midi/sun/AudioFloatConverter;

.field private converter_buffer:[B

.field private empty:Z

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field private size:I


# direct methods
.method public constructor <init>(ILcom/codemao/midi/javax/sampled/AudioFormat;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    .line 46
    iput p1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    .line 47
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 48
    invoke-static {p2}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    return-void
.end method


# virtual methods
.method public array()[F
    .registers 2

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    .line 96
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    if-nez v0, :cond_d

    .line 97
    iget v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    return-object v0
.end method

.method public clear()V
    .registers 3

    .line 84
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    if-nez v0, :cond_d

    .line 85
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    :cond_d
    return-void
.end method

.method public get([BI)V
    .registers 11

    .line 103
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    div-int/2addr v0, v1

    .line 104
    iget v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    mul-int v1, v1, v0

    .line 105
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    if-eqz v2, :cond_18

    array-length v2, v2

    if-ge v2, v1, :cond_1c

    .line 106
    :cond_18
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    .line 108
    :cond_1c
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 109
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    iget v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FI[B)[B

    goto :goto_6a

    .line 111
    :cond_31
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v2

    iget v3, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    invoke-virtual {v1, v2, v3, v4}, Lcom/codemao/midi/sun/AudioFloatConverter;->toByteArray([FI[B)[B

    .line 112
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    if-lt p2, v1, :cond_47

    return-void

    .line 114
    :cond_47
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v1

    mul-int v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_51
    if-ge v3, v0, :cond_6a

    mul-int v4, p2, v0

    add-int/2addr v4, v3

    move v6, v3

    const/4 v5, 0x0

    .line 119
    :goto_58
    iget v7, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    if-ge v5, v7, :cond_67

    .line 120
    iget-object v7, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    aget-byte v7, v7, v6

    aput-byte v7, p1, v4

    add-int/2addr v4, v1

    add-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_6a
    :goto_6a
    return-void
.end method

.method public getSize()I
    .registers 2

    .line 80
    iget v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    return v0
.end method

.method public isSilent()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    return v0
.end method

.method public swap(Lcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 9

    .line 53
    iget v0, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    .line 54
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    .line 55
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    .line 56
    iget-object v3, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 57
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 58
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    .line 60
    iget v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    iput v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    .line 61
    iget-object v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    iput-object v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    .line 62
    iget-boolean v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    iput-boolean v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    .line 63
    iget-object v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    iput-object v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 64
    iget-object v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    iput-object v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 65
    iget-object v6, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    iput-object v6, p0, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    .line 67
    iput v0, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->size:I

    .line 68
    iput-object v1, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->buffer:[F

    .line 69
    iput-boolean v2, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->empty:Z

    .line 70
    iput-object v3, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 71
    iput-object v4, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter:Lcom/codemao/midi/sun/AudioFloatConverter;

    .line 72
    iput-object v5, p1, Lcom/codemao/midi/sun/SoftAudioBuffer;->converter_buffer:[B

    return-void
.end method
