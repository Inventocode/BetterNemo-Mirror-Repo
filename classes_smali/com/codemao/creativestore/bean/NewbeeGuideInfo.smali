.class public Lcom/codemao/creativestore/bean/NewbeeGuideInfo;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "NewbeeGuideInfo.java"


# static fields
.field public static final TYPE_IMAGE:Ljava/lang/String; = "1"

.field public static final TYPE_TEXT:Ljava/lang/String; = "0"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "2"


# instance fields
.field private block:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->block:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->msg:Ljava/lang/String;

    const-string p1, "png"

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "1"

    .line 19
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->type:Ljava/lang/String;

    goto :goto_25

    :cond_14
    const-string p1, ".mp4"

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p1, "2"

    .line 21
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->type:Ljava/lang/String;

    goto :goto_25

    :cond_21
    const-string p1, "0"

    .line 23
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->type:Ljava/lang/String;

    :goto_25
    return-void
.end method


# virtual methods
.method public getBlock()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setBlock(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->block:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->msg:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;->type:Ljava/lang/String;

    return-void
.end method
