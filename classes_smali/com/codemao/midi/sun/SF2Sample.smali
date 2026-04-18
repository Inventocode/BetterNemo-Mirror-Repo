.class public Lcom/codemao/midi/sun/SF2Sample;
.super Lcom/codemao/midi/javax/SoundbankResource;
.source "SF2Sample.java"


# instance fields
.field protected data:Lcom/codemao/midi/sun/ModelByteBuffer;

.field protected data24:Lcom/codemao/midi/sun/ModelByteBuffer;

.field protected endLoop:J

.field protected name:Ljava/lang/String;

.field protected originalPitch:I

.field protected pitchCorrection:B

.field protected sampleRate:J

.field protected startLoop:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    const-class v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/codemao/midi/javax/SoundbankResource;-><init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Sample;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    .line 43
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    const-wide/32 v0, 0xac44

    .line 44
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->sampleRate:J

    const/16 v0, 0x3c

    .line 45
    iput v0, p0, Lcom/codemao/midi/sun/SF2Sample;->originalPitch:I

    const/4 v0, 0x0

    .line 46
    iput-byte v0, p0, Lcom/codemao/midi/sun/SF2Sample;->pitchCorrection:B

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/Soundbank;)V
    .registers 4

    .line 53
    const-class v0, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/codemao/midi/javax/SoundbankResource;-><init>(Lcom/codemao/midi/javax/Soundbank;Ljava/lang/String;Ljava/lang/Class;)V

    const-string p1, ""

    .line 41
    iput-object p1, p0, Lcom/codemao/midi/sun/SF2Sample;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    .line 43
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    const-wide/32 v0, 0xac44

    .line 44
    iput-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->sampleRate:J

    const/16 p1, 0x3c

    .line 45
    iput p1, p0, Lcom/codemao/midi/sun/SF2Sample;->originalPitch:I

    const/4 p1, 0x0

    .line 46
    iput-byte p1, p0, Lcom/codemao/midi/sun/SF2Sample;->pitchCorrection:B

    return-void
.end method


# virtual methods
.method public getData24Buffer()Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Sample;->data24:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object v0
.end method

.method public getDataBuffer()Lcom/codemao/midi/sun/ModelByteBuffer;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Sample;->data:Lcom/codemao/midi/sun/ModelByteBuffer;

    return-object v0
.end method

.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 8

    .line 113
    new-instance v6, Lcom/codemao/midi/javax/sampled/AudioFormat;

    iget-wide v0, p0, Lcom/codemao/midi/sun/SF2Sample;->sampleRate:J

    long-to-float v1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(FIIZZ)V

    return-object v6
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Sample;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/midi/sun/SF2Sample;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
