.class public final Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;
.super Ljava/lang/Object;
.source "SelectAiImageModeAdapter.kt"


# instance fields
.field private final draftUrl:Ljava/lang/String;

.field private final gifUrl:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private select:Z

.field private final sketchUrl:Ljava/lang/String;

.field private final smallImageUrl:Ljava/lang/String;

.field private final styles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation
.end field

.field private final templateId:Ljava/lang/Integer;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    .line 115
    iput-boolean p2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    .line 116
    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    .line 119
    iput-object p6, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    .line 120
    iput-object p7, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    .line 121
    iput-object p8, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    .line 122
    iput-object p9, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    return v2

    :cond_6b
    return v0
.end method

.method public final getDraftUrl()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getGifUrl()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelect()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    return v0
.end method

.method public final getSketchUrl()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmallImageUrl()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    return-object v0
.end method

.method public final getTemplateId()Ljava/lang/Integer;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :cond_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    if-nez v2, :cond_35

    const/4 v2, 0x0

    goto :goto_39

    :cond_35
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_39
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    if-nez v2, :cond_42

    const/4 v2, 0x0

    goto :goto_46

    :cond_42
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_46
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    if-nez v2, :cond_4f

    const/4 v2, 0x0

    goto :goto_53

    :cond_4f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_53
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    if-nez v2, :cond_5c

    const/4 v2, 0x0

    goto :goto_60

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_60
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    if-nez v2, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelect(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelSelectAiImageModel(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gifUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->gifUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", smallImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->smallImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", draftUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->draftUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sketchUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->sketchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", styles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->styles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", templateId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->templateId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
