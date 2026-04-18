.class public Lcom/codemao/creativecenter/utils/down/MaterialTask;
.super Ljava/lang/Object;
.source "MaterialTask.java"


# instance fields
.field private downloadFile:Lcom/codemao/creativecenter/utils/down/DownloadFile;

.field private unZipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/down/DownloadFile;Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->uuid:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->downloadFile:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    .line 29
    iput-object p3, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->unZipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativecenter/utils/down/MaterialTask;
    .registers 5

    .line 57
    new-instance v0, Lcom/codemao/creativecenter/utils/down/MaterialTask;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->uuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->downloadFile:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->unZipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/codemao/creativecenter/utils/down/MaterialTask;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/down/DownloadFile;Lcom/codemao/creativecenter/utils/zip/UnzipInfo;)V

    return-object v0
.end method

.method public getDownloadFile()Lcom/codemao/creativecenter/utils/down/DownloadFile;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->downloadFile:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    return-object v0
.end method

.method public getUnZipInfo()Lcom/codemao/creativecenter/utils/zip/UnzipInfo;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->unZipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialTask{uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", downloadFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->downloadFile:Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unZipInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/down/MaterialTask;->unZipInfo:Lcom/codemao/creativecenter/utils/zip/UnzipInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
