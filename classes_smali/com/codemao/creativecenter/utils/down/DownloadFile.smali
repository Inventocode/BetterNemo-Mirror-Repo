.class public Lcom/codemao/creativecenter/utils/down/DownloadFile;
.super Ljava/lang/Object;
.source "DownloadFile.java"


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field progress:I

.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->downloadUrl:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->savePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativecenter/utils/down/DownloadFile;
    .registers 4

    .line 68
    new-instance v0, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->savePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->downloadUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/utils/down/DownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    iput v1, v0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadFile{, downloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", savePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/utils/down/DownloadFile;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
