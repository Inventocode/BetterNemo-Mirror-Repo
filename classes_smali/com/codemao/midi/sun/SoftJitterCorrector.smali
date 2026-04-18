.class public Lcom/codemao/midi/sun/SoftJitterCorrector;
.super Lcom/codemao/midi/javax/sampled/AudioInputStream;
.source "SoftJitterCorrector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;II)V
    .registers 7

    .line 274
    new-instance v0, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/midi/sun/SoftJitterCorrector$JitterStream;-><init>(Lcom/codemao/midi/javax/sampled/AudioInputStream;II)V

    .line 275
    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object p2

    invoke-virtual {p1}, Lcom/codemao/midi/javax/sampled/AudioInputStream;->getFrameLength()J

    move-result-wide v1

    .line 274
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    return-void
.end method
