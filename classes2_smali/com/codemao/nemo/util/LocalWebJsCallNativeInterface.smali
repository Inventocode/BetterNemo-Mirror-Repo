.class public Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;
.super Ljava/lang/Object;
.source "LocalWebJsCallNativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;
    }
.end annotation


# instance fields
.field private jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    if-nez p1, :cond_15

    const-string p1, "error"

    return-object p1

    .line 34
    :cond_15
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ok"

    :try_start_1b
    const-string v1, "GET_APP_INFO"

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 39
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/codemao/nemo/bean/WebAppInfoData;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/WebAppInfoData;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_32

    move-object v0, p1

    goto :goto_36

    :catch_32
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_36
    :goto_36
    return-object v0
.end method

.method public postMessageSyn(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 50
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    if-nez p1, :cond_15

    const-string p1, "error"

    return-object p1

    .line 54
    :cond_15
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    const/4 v3, -0x1

    .line 58
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_e0

    goto :goto_61

    :sswitch_30
    const-string v4, "GET_USER_INFO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v3, 0x4

    goto :goto_61

    :sswitch_3a
    const-string v4, "CLICK_SHARE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v3, 0x2

    goto :goto_61

    :sswitch_44
    const-string v4, "REPORT_EVENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v3, 0x1

    goto :goto_61

    :sswitch_4e
    const-string v4, "COPY_CONTENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v3, 0x0

    goto :goto_61

    :sswitch_58
    const-string v4, "FINISH_USER_AGREEMENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v3, 0x3

    :cond_61
    :goto_61
    if-eqz v3, :cond_d7

    if-eq v3, v8, :cond_a7

    if-eq v3, v7, :cond_8d

    if-eq v3, v6, :cond_75

    if-eq v3, v5, :cond_6d

    goto/16 :goto_de

    .line 93
    :cond_6d
    iget-object p1, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    invoke-interface {p1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->getUserTokenmessage()Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_de

    .line 87
    :cond_75
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/nemo/bean/GetUserLevelMessage;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/GetUserLevelMessage;

    if-eqz p1, :cond_de

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->onFinishUserAgreement(Lcom/codemao/nemo/bean/GetUserLevelMessage;)V

    goto :goto_de

    .line 81
    :cond_8d
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LocalWebClickShareEvent;

    .line 82
    iget-object v0, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v0, :cond_de

    if-eqz p1, :cond_de

    .line 83
    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->onClickShare(Lcom/codemao/nemo/bean/LocalWebClickShareEvent;)V

    goto :goto_de

    .line 66
    :cond_a7
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil;->getInstance()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/bean/LocalWebReportEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/LocalWebReportEvent;

    .line 68
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebReportEvent;->getReport_type()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v1, :cond_de

    if-ne v0, v8, :cond_c9

    .line 71
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebReportEvent;->getReport_msg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->onReportPageVist(Ljava/lang/String;)V

    goto :goto_de

    :cond_c9
    if-ne v0, v7, :cond_de

    .line 73
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebReportEvent;->getReport_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalWebReportEvent;->getExtra_msg()Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->onReportCustomEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_de

    .line 60
    :cond_d7
    iget-object p1, p0, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz p1, :cond_de

    .line 61
    invoke-interface {p1, v1}, Lcom/codemao/nemo/util/LocalWebJsCallNativeInterface$JsCallNativeCallBack;->onCopyContent(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_de} :catch_de

    :catch_de
    :cond_de
    :goto_de
    return-object v2

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x3a396c5e -> :sswitch_58
        -0x371e3671 -> :sswitch_4e
        -0x7a69051 -> :sswitch_44
        0x1b5dda28 -> :sswitch_3a
        0x7796dad9 -> :sswitch_30
    .end sparse-switch
.end method
