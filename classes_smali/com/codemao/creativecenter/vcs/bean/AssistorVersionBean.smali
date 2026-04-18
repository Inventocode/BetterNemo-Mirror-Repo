.class public final Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;
.super Ljava/lang/Object;
.source "AssistorVersionBean.kt"


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private uploadVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    iput p2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    iget p1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    if-ne v0, p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploadVersion()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setUploadVersion(I)V
    .registers 2

    .line 14
    iput p1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistorVersionBean(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;->uploadVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
