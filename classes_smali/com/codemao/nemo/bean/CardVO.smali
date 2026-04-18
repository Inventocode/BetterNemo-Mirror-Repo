.class public Lcom/codemao/nemo/bean/CardVO;
.super Ljava/lang/Object;
.source "CardVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blockCount:I

.field private coverUrl:Ljava/lang/String;

.field private downloadStatus:Ljava/lang/String;

.field private entityCount:I

.field private hasUploaded:Z

.field private mtime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I

.field private uploadStatus:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyCard()Lcom/codemao/nemo/bean/CardVO;
    .registers 3

    .line 115
    new-instance v0, Lcom/codemao/nemo/bean/CardVO;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/CardVO;-><init>()V

    .line 116
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setType(I)V

    .line 117
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setUuid(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getBlockCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setBlockCount(I)V

    .line 120
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getEntityCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setEntityCount(I)V

    .line 121
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->isHasUploaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setHasUploaded(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setCoverUrl(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setUploadStatus(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CardVO;->setDownloadStatus(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Lcom/codemao/nemo/bean/CardVO;)Z
    .registers 4

    .line 103
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 104
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getBlockCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getBlockCount()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 105
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getEntityCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getEntityCount()I

    move-result v1

    if-ne v0, v1, :cond_71

    .line 106
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->isHasUploaded()Z

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->isHasUploaded()Z

    move-result v1

    if-ne v0, v1, :cond_71

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getDownloadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getUploadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getUploadStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getType()I

    move-result v1

    if-ne v0, v1, :cond_71

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CardVO;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CardVO;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_71

    :cond_6f
    const/4 p1, 0x1

    return p1

    :cond_71
    :goto_71
    const/4 p1, 0x0

    return p1
.end method

.method public getBlockCount()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/codemao/nemo/bean/CardVO;->blockCount:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->downloadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/codemao/nemo/bean/CardVO;->entityCount:I

    return v0
.end method

.method public getMtime()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->mtime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/nemo/bean/CardVO;->type:I

    return v0
.end method

.method public getUploadStatus()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->uploadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/CardVO;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isHasUploaded()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CardVO;->hasUploaded:Z

    return v0
.end method

.method public setBlockCount(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/codemao/nemo/bean/CardVO;->blockCount:I

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->coverUrl:Ljava/lang/String;

    return-void
.end method

.method public setDownloadStatus(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->downloadStatus:Ljava/lang/String;

    return-void
.end method

.method public setEntityCount(I)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/codemao/nemo/bean/CardVO;->entityCount:I

    return-void
.end method

.method public setHasUploaded(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/CardVO;->hasUploaded:Z

    return-void
.end method

.method public setMtime(Ljava/lang/String;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->mtime:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/codemao/nemo/bean/CardVO;->type:I

    return-void
.end method

.method public setUploadStatus(Ljava/lang/String;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->uploadStatus:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/bean/CardVO;->uuid:Ljava/lang/String;

    return-void
.end method
