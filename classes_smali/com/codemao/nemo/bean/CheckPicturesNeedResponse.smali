.class public final Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;
.super Ljava/lang/Object;
.source "CheckPicturesNeedResponse.kt"


# instance fields
.field private bcm_encrypt_url:Ljava/lang/String;

.field private include_ai_resource:Ljava/lang/Boolean;

.field private publish_need_check_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->copy(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;"
        }
    .end annotation

    new-instance v0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getBcm_encrypt_url()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getInclude_ai_resource()Ljava/lang/Boolean;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPublish_need_check_images()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    if-nez v2, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAITag()Z
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setBcm_encrypt_url(Ljava/lang/String;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    return-void
.end method

.method public final setInclude_ai_resource(Ljava/lang/Boolean;)V
    .registers 2

    .line 6
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    return-void
.end method

.method public final setPublish_need_check_images(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckPicturesNeedResponse(publish_need_check_images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->publish_need_check_images:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bcm_encrypt_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->bcm_encrypt_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", include_ai_resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/bean/CheckPicturesNeedResponse;->include_ai_resource:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
