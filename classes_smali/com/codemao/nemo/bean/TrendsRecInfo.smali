.class public Lcom/codemao/nemo/bean/TrendsRecInfo;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "TrendsRecInfo.java"


# instance fields
.field private new_publish_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

.field private top_like_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

.field private user_info:Lcom/codemao/nemo/bean/TrendsRecUserInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNew_publish_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->new_publish_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    return-object v0
.end method

.method public getTop_like_work()Lcom/codemao/nemo/bean/TrendsRecWorkInfo;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->top_like_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    return-object v0
.end method

.method public getUser_info()Lcom/codemao/nemo/bean/TrendsRecUserInfo;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->user_info:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    return-object v0
.end method

.method public setNew_publish_work(Lcom/codemao/nemo/bean/TrendsRecWorkInfo;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->new_publish_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    return-void
.end method

.method public setTop_like_work(Lcom/codemao/nemo/bean/TrendsRecWorkInfo;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->top_like_work:Lcom/codemao/nemo/bean/TrendsRecWorkInfo;

    return-void
.end method

.method public setUser_info(Lcom/codemao/nemo/bean/TrendsRecUserInfo;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/nemo/bean/TrendsRecInfo;->user_info:Lcom/codemao/nemo/bean/TrendsRecUserInfo;

    return-void
.end method
