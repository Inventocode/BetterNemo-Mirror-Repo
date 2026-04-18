.class public final Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;
.super Ljava/lang/Object;
.source "AssistCodeBean.kt"


# instance fields
.field private final token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->token:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final getToken()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->token:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistCodeBean(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistCodeBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
