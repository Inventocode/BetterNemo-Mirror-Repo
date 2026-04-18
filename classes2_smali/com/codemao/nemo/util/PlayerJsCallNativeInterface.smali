.class public Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;
.super Ljava/lang/Object;
.source "PlayerJsCallNativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;
    }
.end annotation


# instance fields
.field private jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    return-void
.end method


# virtual methods
.method public postMessageSyn(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 28
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

    .line 32
    :cond_15
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_e2

    goto :goto_71

    :sswitch_25
    const-string v2, "ON_LOAD_FAIL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_71

    :cond_2e
    const/4 v1, 0x6

    goto :goto_71

    :sswitch_30
    const-string v2, "ON_INIT_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_71

    :cond_39
    const/4 v1, 0x5

    goto :goto_71

    :sswitch_3b
    const-string v2, "TOGGLE_VOICE_DETECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_71

    :cond_44
    const/4 v1, 0x4

    goto :goto_71

    :sswitch_46
    const-string v2, "ON_LOAD_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_71

    :cond_4f
    const/4 v1, 0x3

    goto :goto_71

    :sswitch_51
    const-string v2, "TOGGLE_PHONE_SHAKE_DETECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_71

    :cond_5a
    const/4 v1, 0x2

    goto :goto_71

    :sswitch_5c
    const-string v2, "ON_PLAYER_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_71

    :cond_65
    const/4 v1, 0x1

    goto :goto_71

    :sswitch_67
    const-string v2, "SET_CLOUD_VARIABLES_EXIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    packed-switch v1, :pswitch_data_100

    goto/16 :goto_de

    .line 51
    :pswitch_76  #0x6
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz p1, :cond_de

    .line 52
    invoke-interface {p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->onLoadFailed()V

    goto :goto_de

    .line 35
    :pswitch_7e  #0x5
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz p1, :cond_de

    .line 36
    invoke-interface {p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->onInitSuccess()V

    goto :goto_de

    .line 73
    :pswitch_86  #0x4
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v0, :cond_de

    .line 75
    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->toggleRecorder(Z)V

    goto :goto_de

    .line 40
    :pswitch_98  #0x3
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v0, :cond_de

    .line 43
    :try_start_9c
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "keyboard_staus"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_aa} :catch_ab

    goto :goto_ad

    :catch_ab
    const-string p1, "none"

    .line 47
    :goto_ad
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->onLoadFinished(Ljava/lang/String;)V

    goto :goto_de

    .line 56
    :pswitch_b3  #0x2
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v0, :cond_de

    .line 58
    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->toggleAccelerometer(Z)V

    goto :goto_de

    .line 62
    :pswitch_c5  #0x1
    iget-object p1, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz p1, :cond_de

    .line 63
    invoke-interface {p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->onPlayerStart()V

    goto :goto_de

    .line 67
    :pswitch_cd  #0x0
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;->jsCallNativeCallBack:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;

    if-eqz v0, :cond_de

    .line 69
    invoke-interface {v0, p1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;->hasCloudVariable(Z)V

    :cond_de
    :goto_de
    const-string p1, "ok"

    return-object p1

    nop

    :sswitch_data_e2
    .sparse-switch
        -0x4b4cc478 -> :sswitch_67
        -0x2af90c3c -> :sswitch_5c
        -0x6498350 -> :sswitch_51
        -0x4e37416 -> :sswitch_46
        0x758ec8d -> :sswitch_3b
        0x35b56214 -> :sswitch_30
        0x5f696477 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_cd  #00000000
        :pswitch_c5  #00000001
        :pswitch_b3  #00000002
        :pswitch_98  #00000003
        :pswitch_86  #00000004
        :pswitch_7e  #00000005
        :pswitch_76  #00000006
    .end packed-switch
.end method
