.class public Lcom/codemao/midi/javax/sampled/AudioFileFormat;
.super Ljava/lang/Object;
.source "AudioFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;
    }
.end annotation


# instance fields
.field private byteLength:I

.field private format:Lcom/codemao/midi/javax/sampled/AudioFormat;

.field private frameLength:I

.field private type:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;


# direct methods
.method protected constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;ILcom/codemao/midi/javax/sampled/AudioFormat;I)V
    .registers 5

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->type:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    .line 148
    iput p2, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->byteLength:I

    .line 149
    iput-object p3, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    .line 150
    iput p4, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->frameLength:I

    return-void
.end method

.method public constructor <init>(Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;Lcom/codemao/midi/javax/sampled/AudioFormat;I)V
    .registers 5

    const/4 v0, -0x1

    .line 166
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;ILcom/codemao/midi/javax/sampled/AudioFormat;I)V

    return-void
.end method


# virtual methods
.method public getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 285
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->type:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    if-eqz v1, :cond_32

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->type:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->type:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    invoke-virtual {v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_37

    :cond_32
    const-string v1, "unknown file format"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    :goto_37
    iget v1, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->byteLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_52

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", byte length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->byteLength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", data format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->format:Lcom/codemao/midi/javax/sampled/AudioFormat;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    iget v1, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->frameLength:I

    if-eq v1, v2, :cond_82

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", frame length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->frameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    :cond_82
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method
