.class public abstract Lcom/codemao/midi/sun/AudioFloatInputStream;
.super Ljava/lang/Object;
.source "AudioFloatInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;,
        Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;[BII)Lcom/codemao/midi/sun/AudioFloatInputStream;
    .registers 5

    .line 240
    invoke-static {p0}, Lcom/codemao/midi/sun/AudioFloatConverter;->getConverter(Lcom/codemao/midi/javax/sampled/AudioFormat;)Lcom/codemao/midi/sun/AudioFloatConverter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 242
    new-instance p0, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/codemao/midi/sun/AudioFloatInputStream$BytaArrayAudioFloatInputStream;-><init>(Lcom/codemao/midi/sun/AudioFloatConverter;[BII)V

    return-object p0

    .line 245
    :cond_c
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 246
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1b

    const-wide/16 p1, -0x1

    goto :goto_21

    .line 247
    :cond_1b
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getFrameSize()I

    move-result p1

    div-int/2addr p3, p1

    int-to-long p1, p3

    .line 248
    :goto_21
    new-instance p3, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-direct {p3, v0, p0, p1, p2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    .line 249
    invoke-static {p3}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getInputStream(Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/sun/AudioFloatInputStream;
    .registers 2

    .line 234
    new-instance v0, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;

    invoke-direct {v0, p0}, Lcom/codemao/midi/sun/AudioFloatInputStream$DirectAudioFloatInputStream;-><init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;)V

    return-object v0
.end method


# virtual methods
.method public abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
.end method

.method public abstract getFrameLength()J
.end method

.method public abstract mark(I)V
.end method

.method public abstract markSupported()Z
.end method

.method public read([F)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result p1

    return p1
.end method

.method public abstract read([FII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract skip(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
