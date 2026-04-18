.class public Lcom/codemao/creativestore/jsbridge/JsCallNative;
.super Ljava/lang/Object;
.source "JsCallNative.java"


# instance fields
.field private mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    return-object p0
.end method


# virtual methods
.method public pluginPostMessageAsync(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemolog  getMessageAsyn"

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :try_start_9
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    .line 419
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;-><init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_40

    :catch_24
    move-exception p1

    .line 432
    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;

    invoke-direct {v0}, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;-><init>()V

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->setIs_success(Z)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->setIs_success(Z)V

    const-string v1, "NATIVE_LOAD_ERROR"

    .line 435
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->setError_type(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/PluginPostMsgResult;->setError_msg(Ljava/lang/String;)V

    .line 437
    invoke-interface {p2}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete()V

    :goto_40
    return-void
.end method

.method public pluginPostMessageSync(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemolog  getMessageSyn"

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    if-nez p1, :cond_1e

    const-string p1, "error"

    return-object p1

    .line 402
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;-><init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "ok"

    return-object p1
.end method

.method public postMessageAsyn(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sound"

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nemolog  getMessageAsyn"

    invoke-static {v2, v1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    invoke-virtual {v1, p1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    .line 267
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_336

    :goto_31
    const/4 v2, -0x1

    goto/16 :goto_132

    :sswitch_34
    const-string v3, "EDIT_PROCEDURE_NAME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_31

    :cond_3d
    const/16 v2, 0x13

    goto/16 :goto_132

    :sswitch_41
    const-string v3, "GOTO_SYSTEM_SETTINGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_31

    :cond_4a
    const/16 v2, 0x12

    goto/16 :goto_132

    :sswitch_4e
    const-string v3, "ADD_VARIABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    goto :goto_31

    :cond_57
    const/16 v2, 0x11

    goto/16 :goto_132

    :sswitch_5b
    const-string v3, "SELECT_EXTENSIONS_CATEGORIES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_31

    :cond_64
    const/16 v2, 0x10

    goto/16 :goto_132

    :sswitch_68
    const-string v3, "ON_BLOCK_ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_31

    :cond_71
    const/16 v2, 0xf

    goto/16 :goto_132

    :sswitch_75
    const-string v3, "EDIT_TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    goto :goto_31

    :cond_7e
    const/16 v2, 0xe

    goto/16 :goto_132

    :sswitch_82
    const-string v3, "EDIT_BLOCK_FOLD_TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    goto :goto_31

    :cond_8b
    const/16 v2, 0xd

    goto/16 :goto_132

    :sswitch_8f
    const-string v3, "SHOW_CONFIRM_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    goto :goto_31

    :cond_98
    const/16 v2, 0xc

    goto/16 :goto_132

    :sswitch_9c
    const-string v3, "ADD_BROADCAST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    goto :goto_31

    :cond_a5
    const/16 v2, 0xb

    goto/16 :goto_132

    :sswitch_a9
    const-string v3, "EDIT_BLOCK_COMMENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    goto/16 :goto_31

    :cond_b3
    const/16 v2, 0xa

    goto/16 :goto_132

    :sswitch_b7
    const-string v3, "ADD_PROCEDURE_PARAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    goto/16 :goto_31

    :cond_c1
    const/16 v2, 0x9

    goto/16 :goto_132

    :sswitch_c5
    const-string v3, "GOTO_APP_SETTINGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cf

    goto/16 :goto_31

    :cond_cf
    const/16 v2, 0x8

    goto/16 :goto_132

    :sswitch_d3
    const-string v3, "SHOW_CLEAR_BLOCKS_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    goto/16 :goto_31

    :cond_dd
    const/4 v2, 0x7

    goto :goto_132

    :sswitch_df
    const-string v3, "OPEN_AUDIO_PANEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    goto/16 :goto_31

    :cond_e9
    const/4 v2, 0x6

    goto :goto_132

    :sswitch_eb
    const-string v3, "SHOW_KEYBOARD_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f5

    goto/16 :goto_31

    :cond_f5
    const/4 v2, 0x5

    goto :goto_132

    :sswitch_f7
    const-string v3, "ADD_MIDI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    goto/16 :goto_31

    :cond_101
    const/4 v2, 0x4

    goto :goto_132

    :sswitch_103
    const-string v3, "RENAME_VARIABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10d

    goto/16 :goto_31

    :cond_10d
    const/4 v2, 0x3

    goto :goto_132

    :sswitch_10f
    const-string v3, "OPEN_STYLE_PANEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_119

    goto/16 :goto_31

    :cond_119
    const/4 v2, 0x2

    goto :goto_132

    :sswitch_11b
    const-string v3, "PLAY_AUDIO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_125

    goto/16 :goto_31

    :cond_125
    const/4 v2, 0x1

    goto :goto_132

    :sswitch_127
    const-string v3, "REMOVE_PROCEDURE_PARAM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_131

    goto/16 :goto_31

    :cond_131
    const/4 v2, 0x0

    :goto_132
    const-string v3, "id"

    packed-switch v2, :pswitch_data_388

    goto/16 :goto_334

    .line 353
    :pswitch_139  #0x13
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    const-string v0, "edit_procedure_name"

    .line 354
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->setType(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->editProcedureName(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 369
    :pswitch_151  #0x12
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class p2, Lcom/codemao/creativestore/bean/SettingPathType;

    invoke-virtual {p1, v1, p2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SettingPathType;

    .line 370
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16e

    .line 371
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->gotoAPPSetting()V

    goto/16 :goto_334

    .line 372
    :cond_16e
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bluetooth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_181

    .line 373
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->gotoBluetoothSetting()V

    goto/16 :goto_334

    .line 374
    :cond_181
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SettingPathType;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "location"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_334

    .line 375
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->gotoLocationSetting()V

    goto/16 :goto_334

    .line 270
    :pswitch_194  #0x11
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/bean/AddVariableMsg;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/AddVariableMsg;

    if-eqz p1, :cond_1f9

    .line 271
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    goto :goto_1f9

    .line 274
    :cond_1b1
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/AddVariableMsg;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3b4

    :goto_1bf
    const/4 v4, -0x1

    goto :goto_1df

    :sswitch_1c1
    const-string v1, "cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1df

    goto :goto_1bf

    :sswitch_1ca
    const-string v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3

    goto :goto_1bf

    :cond_1d3
    const/4 v4, 0x1

    goto :goto_1df

    :sswitch_1d5
    const-string v1, "any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1de

    goto :goto_1bf

    :cond_1de
    const/4 v4, 0x0

    :cond_1df
    :goto_1df
    packed-switch v4, :pswitch_data_3c2

    goto/16 :goto_334

    .line 282
    :pswitch_1e4  #0x2
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addCloudVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 279
    :pswitch_1eb  #0x1
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addList(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 276
    :pswitch_1f2  #0x0
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addVarible(Lcom/codemao/creativestore/bean/AddVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    :cond_1f9
    :goto_1f9
    return-void

    .line 379
    :pswitch_1fa  #0x10
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/ToolboxBeanMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ToolboxBeanMsg;

    .line 380
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ToolboxBeanMsg;->getSelected_categories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ToolboxBeanMsg;->getLocked_categories()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->selectExtensionsCategories(Ljava/util/List;Ljava/util/List;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 313
    :pswitch_215  #0xf
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/BlockErrorMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/BlockErrorMsg;

    .line 314
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->onBlockError(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 328
    :pswitch_228  #0xe
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/CreateEditTextMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/CreateEditTextMsg;

    .line 329
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->editText(Lcom/codemao/creativestore/bean/CreateEditTextMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 317
    :pswitch_23b  #0xd
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    .line 318
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->editBlockFoldName(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 387
    :pswitch_24e  #0xc
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;

    .line 388
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 291
    :pswitch_261  #0xb
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/AddBroadcastMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/AddBroadcastMsg;

    .line 292
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addBroadCast(Lcom/codemao/creativestore/bean/AddBroadcastMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 324
    :pswitch_274  #0xa
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/AnnotateBlockMsg;

    .line 325
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->editBlockComment(Lcom/codemao/creativestore/bean/AnnotateBlockMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 358
    :pswitch_287  #0x9
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    const-string v0, "edit_procedure_param"

    .line 359
    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/RenameVariableMsg;->setType(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addProcedureParmas(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 366
    :pswitch_29f  #0x8
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->gotoAPPSetting()V

    goto/16 :goto_334

    .line 321
    :pswitch_2a6  #0x7
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showClearBlocksDialog(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 344
    :pswitch_2ad  #0x6
    :try_start_2ad
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2b6
    .catch Lorg/json/JSONException; {:try_start_2ad .. :try_end_2b6} :catch_2b7

    goto :goto_2bd

    :catch_2b7
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 349
    :goto_2bd
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->openAudioPanel(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_334

    .line 383
    :pswitch_2c4  #0x5
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/OnlyTextMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/OnlyTextMsg;

    .line 384
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/OnlyTextMsg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showKeyboardDialog(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto :goto_334

    .line 295
    :pswitch_2da  #0x4
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->addMidi(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto :goto_334

    .line 287
    :pswitch_2e0  #0x3
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    const-class v0, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/RenameVariableMsg;

    .line 288
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->renameVariableMsg(Lcom/codemao/creativestore/bean/RenameVariableMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto :goto_334

    .line 334
    :pswitch_2f2  #0x2
    :try_start_2f2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "index"

    .line 335
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2fd
    .catch Lorg/json/JSONException; {:try_start_2f2 .. :try_end_2fd} :catch_2fe

    goto :goto_302

    :catch_2fe
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    :goto_302
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1, v7, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->openStylePanel(ILcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto :goto_334

    .line 299
    :pswitch_308  #0x1
    :try_start_308
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_325

    .line 301
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "res/raw/"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_325

    .line 303
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1, v0, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->playSound(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    return-void

    .line 307
    :cond_325
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->playSoundWithId(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_308 .. :try_end_32e} :catch_334

    goto :goto_334

    .line 363
    :pswitch_32f  #0x0
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mDecoderListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-interface {p1, p2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showCleanCanShu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    :catch_334
    :cond_334
    :goto_334
    return-void

    nop

    :sswitch_data_336
    .sparse-switch
        -0x6a8941da -> :sswitch_127
        -0x3aacad15 -> :sswitch_11b
        -0x2e3838bf -> :sswitch_10f
        -0x2cc471a3 -> :sswitch_103
        -0x19437fe1 -> :sswitch_f7
        -0x2c0c8a2 -> :sswitch_eb
        -0x245aa5a -> :sswitch_df
        -0xf2b8b3 -> :sswitch_d3
        0x94399fd -> :sswitch_c5
        0xb7c3423 -> :sswitch_b7
        0x10b40ef8 -> :sswitch_a9
        0x140f0263 -> :sswitch_9c
        0x2207e949 -> :sswitch_8f
        0x2de89524 -> :sswitch_82
        0x38a1c642 -> :sswitch_75
        0x399cd536 -> :sswitch_68
        0x47306024 -> :sswitch_5b
        0x4dec787a -> :sswitch_4e
        0x772ea557 -> :sswitch_41
        0x79f3436c -> :sswitch_34
    .end sparse-switch

    :pswitch_data_388
    .packed-switch 0x0
        :pswitch_32f  #00000000
        :pswitch_308  #00000001
        :pswitch_2f2  #00000002
        :pswitch_2e0  #00000003
        :pswitch_2da  #00000004
        :pswitch_2c4  #00000005
        :pswitch_2ad  #00000006
        :pswitch_2a6  #00000007
        :pswitch_29f  #00000008
        :pswitch_287  #00000009
        :pswitch_274  #0000000a
        :pswitch_261  #0000000b
        :pswitch_24e  #0000000c
        :pswitch_23b  #0000000d
        :pswitch_228  #0000000e
        :pswitch_215  #0000000f
        :pswitch_1fa  #00000010
        :pswitch_194  #00000011
        :pswitch_151  #00000012
        :pswitch_139  #00000013
    .end packed-switch

    :sswitch_data_3b4
    .sparse-switch
        0x179ec -> :sswitch_1d5
        0x32b09e -> :sswitch_1ca
        0x5a5de35 -> :sswitch_1c1
    .end sparse-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_1f2  #00000000
        :pswitch_1eb  #00000001
        :pswitch_1e4  #00000002
    .end packed-switch
.end method

.method public postMessageSyn(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nemolog  getMessageSyn"

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;

    if-nez p1, :cond_1e

    const-string p1, "error"

    return-object p1

    .line 76
    :cond_1e
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getType()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/JsBridgeBaseBean;->getPayloadStr()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GET_ENV"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 79
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativestore/CreativeStoreUtils;->env:Ljava/lang/String;

    return-object p1

    .line 81
    :cond_35
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;-><init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "ok"

    return-object p1
.end method
