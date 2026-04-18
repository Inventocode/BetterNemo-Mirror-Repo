.class public Lcom/codemao/nemo/bean/CollectWorkInfo;
.super Ljava/lang/Object;
.source "CollectWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private collections_count:I

.field private deleted:Z

.field private id:J

.field private likes_count:I

.field private name:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private user_id:J

.field private views_count:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCollections_count()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->collections_count:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->id:J

    return-wide v0
.end method

.method public getLikes_count()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->likes_count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->publish_time:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getViews_count()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->views_count:I

    return v0
.end method

.method public isDeleted()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->deleted:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setCollections_count(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->collections_count:I

    return-void
.end method

.method public setDeleted(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->deleted:Z

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->id:J

    return-void
.end method

.method public setLikes_count(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->likes_count:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 72
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->publish_time:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 80
    iput-wide p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->user_id:J

    return-void
.end method

.method public setViews_count(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/codemao/nemo/bean/CollectWorkInfo;->views_count:I

    return-void
.end method
