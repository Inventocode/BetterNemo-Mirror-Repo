.class public Lcom/codemao/creativestore/bean/ToolBoxConfig;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "ToolBoxConfig.java"


# instance fields
.field private action:Ljava/lang/String;

.field private block_keywords:[Ljava/lang/String;

.field private categories:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockKeywords()[Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->block_keywords:[Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()[Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->categories:[Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->action:Ljava/lang/String;

    return-void
.end method

.method public setBlockKeywords([Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->block_keywords:[Ljava/lang/String;

    return-void
.end method

.method public setCategories([Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ToolBoxConfig;->categories:[Ljava/lang/String;

    return-void
.end method
