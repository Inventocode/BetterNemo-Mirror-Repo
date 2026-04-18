.class public final Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;
.super Ljava/lang/Object;
.source "AssistInfosBean.kt"


# instance fields
.field private final applyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "apply_id"
    .end annotation
.end field

.field private final assistantInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assistant_info_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final helpStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help_status"
    .end annotation
.end field

.field private final token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_2f

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;

    if-eqz v0, :cond_2d

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->assistantInfoList:Ljava/util/List;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->assistantInfoList:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->helpStatus:I

    iget v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->helpStatus:I

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->applyId:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->applyId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 p1, 0x0

    return p1

    :cond_2f
    :goto_2f
    const/4 p1, 0x1

    return p1
.end method

.method public final getApplyId()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->applyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssistantInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->assistantInfoList:Ljava/util/List;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->assistantInfoList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->helpStatus:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->token:Ljava/lang/String;

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->applyId:Ljava/lang/String;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_27
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistInfosBean(assistantInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->assistantInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", helpStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->helpStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", applyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistInfosBean;->applyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
