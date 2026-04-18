.class public Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;
.super Ljava/lang/Object;
.source "WorkDetailRecommendWorkInfoV3.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private like_times:J

.field private nickname:Ljava/lang/String;

.field private parent_id:Ljava/lang/String;

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private user_id:J

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
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_times()J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->like_times:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->parent_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 28
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->user_id:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfoV3;->work_name:Ljava/lang/String;

    return-object v0
.end method
