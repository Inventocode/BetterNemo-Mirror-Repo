.class public final Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;
.super Ljava/lang/Object;
.source "ApplyWorkBean.kt"


# instance fields
.field private final assistId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "assist_id"
    .end annotation
.end field

.field private final workId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->workId:J

    iput-wide p3, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->assistId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->workId:J

    iget-wide v2, p1, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->workId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_19

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->assistId:J

    iget-wide v2, p1, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->assistId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 4

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->workId:J

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->assistId:J

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyWorkBean(workId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->workId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", assistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean;->assistId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
