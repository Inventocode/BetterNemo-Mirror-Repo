.class public Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "JsBridgeBaseBean.java"


# instance fields
.field private payload:Ljava/lang/Object;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPayloadStr()Ljava/lang/String;
    .registers 3

    .line 32
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->payload:Ljava/lang/Object;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->type:Ljava/lang/String;

    return-void
.end method
