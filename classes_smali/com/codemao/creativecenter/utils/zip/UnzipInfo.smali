.class public Lcom/codemao/creativecenter/utils/zip/UnzipInfo;
.super Ljava/lang/Object;
.source "UnzipInfo.java"


# instance fields
.field private destPath:Ljava/lang/String;

.field progress:I

.field private psd:Ljava/lang/String;

.field private zipFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->zipFilePath:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->destPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDestPath()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->destPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->progress:I

    return v0
.end method

.method public getPsd()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->psd:Ljava/lang/String;

    return-object v0
.end method

.method public getZipFilePath()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->zipFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnzipInfo{zipFilePath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->zipFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->destPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", psd=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->psd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/utils/zip/UnzipInfo;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
