.class public Lcom/codemao/nemo/bean/LatestWorkInfo;
.super Ljava/lang/Object;
.source "LatestWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private isOther:Z

.field private like_count:I

.field private otherTitle:Ljava/lang/String;

.field private otherType:I

.field private otherWorkInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parent_id:J

.field private preview:Ljava/lang/String;

.field private published_at:J

.field private template_id:I

.field private updated_at:J

.field private user_id:J

.field private user_name:Ljava/lang/String;

.field private view_count:I

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherType:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther:Z

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_count()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->like_count:I

    return v0
.end method

.method public getOtherTitle()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherType()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherType:I

    return v0
.end method

.method public getOtherWorkInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherWorkInfos:Ljava/util/List;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 80
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->parent_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublished_at()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->published_at:J

    return-wide v0
.end method

.method public getTemplate_id()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->template_id:I

    return v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 120
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->updated_at:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getUser_name()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method public getView_count()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->view_count:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 64
    iget-wide v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isOther()Z
    .registers 2

    .line 55
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setLike_count(I)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->like_count:I

    return-void
.end method

.method public setOther(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther:Z

    return-void
.end method

.method public setOtherTitle(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherTitle:Ljava/lang/String;

    return-void
.end method

.method public setOtherType(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherType:I

    return-void
.end method

.method public setOtherWorkInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->otherWorkInfos:Ljava/util/List;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 84
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->parent_id:J

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setTemplate_id(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->template_id:I

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 124
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->updated_at:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->user_id:J

    return-void
.end method

.method public setUser_name(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->user_name:Ljava/lang/String;

    return-void
.end method

.method public setView_count(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->view_count:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 68
    iput-wide p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/codemao/nemo/bean/LatestWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
