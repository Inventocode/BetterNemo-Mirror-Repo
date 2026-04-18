.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;
.super Ljava/lang/Object;
.source "AiImageGenerateStyleAdapter.kt"


# instance fields
.field private currentImgIndex:I

.field private final id:I

.field private final imageUrl:Ljava/lang/String;

.field private imgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;",
            ">;"
        }
    .end annotation
.end field

.field private select:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;",
            ">;I)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    .line 60
    iput-boolean p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    .line 61
    iput-object p5, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    .line 62
    iput p6, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v3, v1

    goto :goto_8

    :cond_7
    move-object v3, p1

    :goto_8
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_e

    move-object v4, v1

    goto :goto_f

    :cond_e
    move-object v4, p2

    :goto_f
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_17

    :cond_16
    move v6, p4

    :goto_17
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1d

    move-object v7, v1

    goto :goto_1e

    :cond_1d
    move-object v7, p5

    :goto_1e
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_25

    const/4 v0, -0x1

    const/4 v8, -0x1

    goto :goto_26

    :cond_25
    move v8, p6

    :goto_26
    move-object v2, p0

    move v5, p3

    .line 56
    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;-><init>(Ljava/lang/String;Ljava/lang/String;IZLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    iget p1, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    if-eq v1, p1, :cond_42

    return v2

    :cond_42
    return v0
.end method

.method public final getCurrentImgIndex()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    return v0
.end method

.method public final getId()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    return v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public final getSelect()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :cond_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCurrentImgIndex(I)V
    .registers 2

    .line 62
    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    return-void
.end method

.method public final setImgList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ImageStateModel;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    return-void
.end method

.method public final setSelect(Z)V
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiImageGenerateStyleModel(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imgList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->imgList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentImgIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->currentImgIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
