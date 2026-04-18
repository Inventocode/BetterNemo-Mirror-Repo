.class public Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;
.super Ljava/lang/Object;
.source "TarsosDSPAudioFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoding"
.end annotation


# static fields
.field public static final PCM_SIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

.field public static final PCM_UNSIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 576
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    const-string v1, "PCM_SIGNED"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    .line 581
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    const-string v1, "PCM_UNSIGNED"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    .line 586
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    const-string v1, "ULAW"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    .line 591
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    const-string v1, "ALAW"

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 619
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    .line 620
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 622
    :cond_11
    instance-of v0, p1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;

    if-eqz v0, :cond_22

    .line 623
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 632
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 635
    :cond_8
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat$Encoding;->name:Ljava/lang/String;

    return-object v0
.end method
