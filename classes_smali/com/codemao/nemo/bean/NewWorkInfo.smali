.class public Lcom/codemao/nemo/bean/NewWorkInfo;
.super Ljava/lang/Object;
.source "NewWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private background_color:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private parent_id:I

.field private recommend_word:Ljava/lang/String;

.field private recommend_word_id:J

.field private updated_at:J

.field private user_id:J

.field private work_id:J

.field private work_name:Ljava/lang/String;

.field private work_preview:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackground_color()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->background_color:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->parent_id:I

    return v0
.end method

.method public getRecommend_word()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->recommend_word:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommend_word_id()J
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->recommend_word_id:J

    return-wide v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->updated_at:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 23
    iget-wide v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_preview()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/nemo/bean/NewWorkInfo;->work_preview:Ljava/lang/String;

    return-object v0
.end method
