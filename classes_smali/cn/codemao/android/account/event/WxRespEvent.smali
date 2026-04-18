.class public Lcn/codemao/android/account/event/WxRespEvent;
.super Ljava/lang/Object;
.source "WxRespEvent.java"


# instance fields
.field private response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    return-void
.end method


# virtual methods
.method public code()Ljava/lang/String;
    .registers 3

    .line 45
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    instance-of v0, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    if-eqz v0, :cond_27

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    check-cast v1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v1, v1, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/account/util/LogUtils;->d(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    check-cast v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;

    iget-object v0, v0, Lcom/tencent/mm/opensdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponse()Lcom/tencent/mm/opensdk/modelbase/BaseResp;
    .registers 2

    .line 22
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    return-object v0
.end method

.method public isAuth()Z
    .registers 3

    .line 33
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    invoke-virtual {v0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public isPay()Z
    .registers 3

    .line 37
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    invoke-virtual {v0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isShare()Z
    .registers 3

    .line 30
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    invoke-virtual {v0}, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isSuccess()Z
    .registers 2

    .line 41
    iget-object v0, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    iget v0, v0, Lcom/tencent/mm/opensdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setResponse(Lcom/tencent/mm/opensdk/modelbase/BaseResp;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcn/codemao/android/account/event/WxRespEvent;->response:Lcom/tencent/mm/opensdk/modelbase/BaseResp;

    return-void
.end method
