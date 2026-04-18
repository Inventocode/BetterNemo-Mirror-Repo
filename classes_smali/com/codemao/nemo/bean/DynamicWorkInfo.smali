.class public Lcom/codemao/nemo/bean/DynamicWorkInfo;
.super Ljava/lang/Object;
.source "DynamicWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private collect_times:I

.field private delete:Z

.field private like_times:I

.field private nickname:Ljava/lang/String;

.field private parent_id:J

.field private preview:Ljava/lang/String;

.field private publish_at:J

.field private view_times:I

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect_times()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->collect_times:I

    return v0
.end method

.method public getLike_times()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->like_times:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->parent_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_at()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->publish_at:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->view_times:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->delete:Z

    return v0
.end method

.method public setCollect_times(I)V
    .registers 2

    .line 87
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->collect_times:I

    return-void
.end method

.method public setDelete(Z)V
    .registers 2

    .line 95
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->delete:Z

    return-void
.end method

.method public setLike_times(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->like_times:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->parent_id:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_at(J)V
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->publish_at:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->view_times:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
