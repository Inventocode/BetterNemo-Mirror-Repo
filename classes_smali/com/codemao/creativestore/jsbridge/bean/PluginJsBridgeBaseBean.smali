.class public Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "PluginJsBridgeBaseBean.java"


# instance fields
.field private payload:Ljava/lang/Object;

.field private plugin_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->plugin_name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPayloadStr()Ljava/lang/String;
    .registers 3

    .line 35
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlugin_name()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->plugin_name:Ljava/lang/String;

    return-object v0
.end method

.method public setPayload(Ljava/lang/Object;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->payload:Ljava/lang/Object;

    return-void
.end method

.method public setPlugin_name(Ljava/lang/String;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;->plugin_name:Ljava/lang/String;

    return-void
.end method
