.class public Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;
.super Ljava/lang/Object;
.source "AudioFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/javax/sampled/AudioFileFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final WAVE:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;


# instance fields
.field private final extension:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 320
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const-string v1, "WAVE"

    const-string v2, "wav"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->WAVE:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    .line 325
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const-string v1, "AU"

    const-string v2, "au"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const-string v1, "AIFF"

    const-string v2, "aif"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const-string v1, "AIFF-C"

    const-string v2, "aifc"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const-string v1, "SND"

    const-string v2, "snd"

    invoke-direct {v0, v1, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->name:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    .line 377
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    .line 378
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    .line 380
    :cond_11
    instance-of v0, p1, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    if-eqz v0, :cond_22

    .line 381
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    return v1
.end method

.method public getExtension()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 390
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 393
    :cond_8
    invoke-virtual {p0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->name:Ljava/lang/String;

    return-object v0
.end method
