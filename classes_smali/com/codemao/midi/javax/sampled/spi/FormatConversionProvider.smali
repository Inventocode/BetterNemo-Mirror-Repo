.class public abstract Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;
.super Ljava/lang/Object;
.source "FormatConversionProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAudioInputStream(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioInputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
.end method

.method public abstract getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;
.end method

.method public isConversionSupported(Lcom/codemao/midi/javax/sampled/AudioFormat;Lcom/codemao/midi/javax/sampled/AudioFormat;)Z
    .registers 6

    .line 179
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getEncoding()Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0, p2}, Lcom/codemao/midi/javax/sampled/spi/FormatConversionProvider;->getTargetFormats(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;Lcom/codemao/midi/javax/sampled/AudioFormat;)[Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    :goto_a
    array-length v2, p2

    if-ge v1, v2, :cond_1a

    .line 182
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lcom/codemao/midi/javax/sampled/AudioFormat;->matches(Lcom/codemao/midi/javax/sampled/AudioFormat;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method
