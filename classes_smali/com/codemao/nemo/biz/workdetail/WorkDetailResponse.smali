.class public final Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;
.super Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
.source "WorkDetailResponse.kt"


# instance fields
.field private fork_scope:Ljava/lang/Integer;

.field private final include_ai_resource:Ljava/lang/Integer;

.field private final player_display_type:Ljava/lang/Integer;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->player_display_type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->player_display_type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->include_ai_resource:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->include_ai_resource:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getNeedFollow()Z
    .registers 2

    .line 28
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isForkFans()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->isFollowAuthor()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final getShowReviewState()Z
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->player_display_type:Ljava/lang/Integer;

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final getUserId()J
    .registers 3

    .line 13
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->player_display_type:Ljava/lang/Integer;

    if-nez v2, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->include_ai_resource:Ljava/lang/Integer;

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

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->include_ai_resource:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method public final isFollowAuthor()Z
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->isFork_user()Z

    move-result v0

    return v0
.end method

.method public final isForkFans()Z
    .registers 3

    .line 25
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->isFork_enable()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public final isPraised()Z
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getAbilities()Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/Abilities;->isIs_praised()Z

    move-result v0

    return v0
.end method

.method public final setFork_scope(Ljava/lang/Integer;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkDetailResponse(fork_scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->fork_scope:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", player_display_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->player_display_type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", include_ai_resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;->include_ai_resource:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
