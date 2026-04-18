.class public final Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;
.super Ljava/lang/Object;
.source "DownloadCollectionImageManager.kt"


# instance fields
.field private filePath:Ljava/lang/String;

.field private texture:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_29

    instance-of v0, p1, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    if-eqz v0, :cond_27

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x1

    return p1
.end method

.method public final getFilePath()Ljava/lang/String;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTexture()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadImageItem(url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", texture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/DownloadImageItem;->texture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
