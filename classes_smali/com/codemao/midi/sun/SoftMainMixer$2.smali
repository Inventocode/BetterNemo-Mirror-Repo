.class Lcom/codemao/midi/sun/SoftMainMixer$2;
.super Ljava/io/InputStream;
.source "SoftMainMixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/midi/sun/SoftMainMixer;-><init>(Lcom/codemao/midi/sun/SoftSynthesizer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bbuffer:[B

.field private bbuffer_pos:I

.field private buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private buffersize:I

.field private nrofchannels:I

.field private single:[B

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftMainMixer;


# direct methods
.method constructor <init>(Lcom/codemao/midi/sun/SoftMainMixer;)V
    .registers 4

    .line 861
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->this$0:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 863
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$500(Lcom/codemao/midi/sun/SoftMainMixer;)[Lcom/codemao/midi/sun/SoftAudioBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    .line 865
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$600(Lcom/codemao/midi/sun/SoftMainMixer;)Lcom/codemao/midi/sun/SoftSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getChannels()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->nrofchannels:I

    .line 866
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->getSize()I

    move-result v0

    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->buffersize:I

    .line 868
    invoke-static {p1}, Lcom/codemao/midi/sun/SoftMainMixer;->access$600(Lcom/codemao/midi/sun/SoftMainMixer;)Lcom/codemao/midi/sun/SoftSynthesizer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftSynthesizer;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleSizeInBits()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    mul-int v0, v0, p1

    iget p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->nrofchannels:I

    mul-int v0, v0, p1

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer:[B

    .line 871
    iput v1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer_pos:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 872
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->single:[B

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2

    .line 919
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->this$0:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-static {v0}, Lcom/codemao/midi/sun/SoftMainMixer;->access$600(Lcom/codemao/midi/sun/SoftMainMixer;)Lcom/codemao/midi/sun/SoftSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftSynthesizer;->close()V

    return-void
.end method

.method public fillBuffer()V
    .registers 5

    .line 881
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->this$0:Lcom/codemao/midi/sun/SoftMainMixer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftMainMixer;->processAudioBuffers()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 882
    :goto_7
    iget v2, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->nrofchannels:I

    if-ge v1, v2, :cond_17

    .line 883
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->buffers:[Lcom/codemao/midi/sun/SoftAudioBuffer;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer:[B

    invoke-virtual {v2, v3, v1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->get([BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 884
    :cond_17
    iput v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer_pos:I

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->single:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 911
    :cond_a
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->single:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 11

    .line 888
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer:[B

    array-length v1, v0

    add-int v2, p2, p3

    move v3, p2

    :cond_6
    :goto_6
    if-ge v3, v2, :cond_2d

    .line 893
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftMainMixer$2;->available()I

    move-result v4

    if-nez v4, :cond_12

    .line 894
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftMainMixer$2;->fillBuffer()V

    goto :goto_6

    .line 896
    :cond_12
    iget v4, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer_pos:I

    :goto_14
    if-ge v3, v2, :cond_23

    if-ge v4, v1, :cond_23

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v4, 0x1

    .line 898
    aget-byte v4, v0, v4

    aput-byte v4, p1, v3

    move v3, v5

    move v4, v6

    goto :goto_14

    .line 899
    :cond_23
    iput v4, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->bbuffer_pos:I

    .line 900
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftMainMixer$2;->this$0:Lcom/codemao/midi/sun/SoftMainMixer;

    iget-boolean v4, v4, Lcom/codemao/midi/sun/SoftMainMixer;->readfully:Z

    if-nez v4, :cond_6

    sub-int/2addr v3, p2

    return v3

    :cond_2d
    return p3
.end method
