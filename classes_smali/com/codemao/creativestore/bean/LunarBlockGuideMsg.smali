.class public Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "LunarBlockGuideMsg.java"


# instance fields
.field private area:Ljava/lang/String;

.field private source_block:Ljava/lang/String;

.field private target_block:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->area:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->source_block:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->target_block:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_block()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->source_block:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_block()Ljava/lang/String;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->target_block:Ljava/lang/String;

    return-object v0
.end method

.method public setArea(Ljava/lang/String;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->area:Ljava/lang/String;

    return-void
.end method

.method public setSource_block(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->source_block:Ljava/lang/String;

    return-void
.end method

.method public setTarget_block(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/codemao/creativestore/bean/LunarBlockGuideMsg;->target_block:Ljava/lang/String;

    return-void
.end method
