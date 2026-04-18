.class public Lcom/codemao/nemo/bean/SubjectWorkInfo;
.super Ljava/lang/Object;
.source "SubjectWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private id:J

.field private n_likes:I

.field private n_views:I

.field private nickname:Ljava/lang/String;

.field private parent_id:I

.field private preview:Ljava/lang/String;

.field private user_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->id:J

    return-wide v0
.end method

.method public getN_likes()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->n_likes:I

    return v0
.end method

.method public getN_views()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->n_views:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->parent_id:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 63
    iput-wide p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->id:J

    return-void
.end method

.method public setN_likes(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->n_likes:I

    return-void
.end method

.method public setN_views(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->n_views:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 55
    iput-wide p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->user_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/bean/SubjectWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
