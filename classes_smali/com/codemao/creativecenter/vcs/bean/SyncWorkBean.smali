.class public final Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;
.super Ljava/lang/Object;
.source "SyncWorkBean.kt"


# instance fields
.field private final bcmVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bcm_version"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help_id"
    .end annotation
.end field

.field private final workId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_id"
    .end annotation
.end field

.field private final workUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "workUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bcmVersion"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->id:J

    iput-wide p3, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workId:J

    iput-object p5, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->bcmVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_16

    .line 19
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p6

    const-string p7, "CreativeCenterUtils.getInstance()"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p6}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object p6

    const-string p7, "CreativeCenterUtils.getInstance().bcmVersion"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_16
    move-object v6, p6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-eq p0, p1, :cond_2f

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;

    if-eqz v0, :cond_2d

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->id:J

    iget-wide v2, p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workId:J

    iget-wide v2, p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->bcmVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->bcmVersion:Ljava/lang/String;

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

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->id:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->bcmVersion:Ljava/lang/String;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_27
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncWorkBean(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->workUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bcmVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/SyncWorkBean;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
