.class public Lcom/codemao/nemo/bean/UserLevelInfo;
.super Ljava/lang/Object;
.source "UserLevelInfo.java"


# instance fields
.field private author_level_info:Lcom/codemao/nemo/bean/AuthorLevelInfo;

.field private consume_level_info:Lcom/codemao/nemo/bean/ConsumeLevelInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor_level_info()Lcom/codemao/nemo/bean/AuthorLevelInfo;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserLevelInfo;->author_level_info:Lcom/codemao/nemo/bean/AuthorLevelInfo;

    return-object v0
.end method

.method public getConsume_level_info()Lcom/codemao/nemo/bean/ConsumeLevelInfo;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserLevelInfo;->consume_level_info:Lcom/codemao/nemo/bean/ConsumeLevelInfo;

    return-object v0
.end method

.method public setAuthor_level_info(Lcom/codemao/nemo/bean/AuthorLevelInfo;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserLevelInfo;->author_level_info:Lcom/codemao/nemo/bean/AuthorLevelInfo;

    return-void
.end method

.method public setConsume_level_info(Lcom/codemao/nemo/bean/ConsumeLevelInfo;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserLevelInfo;->consume_level_info:Lcom/codemao/nemo/bean/ConsumeLevelInfo;

    return-void
.end method
