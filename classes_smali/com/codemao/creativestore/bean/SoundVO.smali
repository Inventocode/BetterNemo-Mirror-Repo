.class public Lcom/codemao/creativestore/bean/SoundVO;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "SoundVO.java"


# instance fields
.field private ext:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private midi:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    const-string v0, "aac"

    .line 14
    iput-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyWithNewId(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;
    .registers 4

    .line 72
    new-instance v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SoundVO;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setExt(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method public copyWithSame()Lcom/codemao/creativestore/bean/SoundVO;
    .registers 3

    .line 80
    new-instance v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SoundVO;-><init>()V

    .line 81
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setExt(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SoundVO;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SoundVO;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/codemao/creativestore/bean/SoundVO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setId(Ljava/lang/String;)V

    return-object v0
.end method

.method public delRecordVoice(Ljava/lang/String;)V
    .registers 3

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_e
    return-void
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "aac"

    .line 33
    iput-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    .line 35
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMidi()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->midi:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isRecordVoice()Z
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_12
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    return v0
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundVO;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setMidi(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundVO;->midi:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundVO;->url:Ljava/lang/String;

    return-void
.end method
