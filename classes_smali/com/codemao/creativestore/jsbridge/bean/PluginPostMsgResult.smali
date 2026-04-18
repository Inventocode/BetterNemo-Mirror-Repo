.class public Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "PluginPostMsgResult.java"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private error_type:Ljava/lang/String;

.field private is_success:Z

.field private payload:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getError_type()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->error_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public isIs_success()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->is_success:Z

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setError_type(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->error_type:Ljava/lang/String;

    return-void
.end method

.method public setIs_success(Z)V
    .registers 2

    .line 24
    iput-boolean p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->is_success:Z

    return-void
.end method

.method public setPayload(Ljava/lang/Object;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->payload:Ljava/lang/Object;

    return-void
.end method
