.class public final Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;
.super Ljava/lang/Object;
.source "PreviewImage.kt"


# instance fields
.field private final path:Ljava/lang/String;

.field private selected:Z

.field private final srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelected()Z
    .registers 2

    .line 4
    iget-boolean v0, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    return v0
.end method

.method public final getSrcPath()Ljava/lang/String;
    .registers 2

    .line 4
    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :cond_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    if-nez v2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelected(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreviewImage(path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->selected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", srcPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
