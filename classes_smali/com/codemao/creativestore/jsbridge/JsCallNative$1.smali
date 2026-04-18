.class Lcom/codemao/creativestore/jsbridge/JsCallNative$1;
.super Ljava/lang/Object;
.source "JsCallNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/JsCallNative;->postMessageSyn(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

.field final synthetic val$baseType:Ljava/lang/String;

.field final synthetic val$payloadStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 81
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$baseType:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 84
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$baseType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_456

    goto/16 :goto_180

    :sswitch_11
    const-string v1, "STOP_ALL_AUDIOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_180

    :cond_1b
    const/16 v4, 0x1b

    goto/16 :goto_180

    :sswitch_1f
    const-string v1, "GET_USER_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_180

    :cond_29
    const/16 v4, 0x1a

    goto/16 :goto_180

    :sswitch_2d
    const-string v1, "SELECT_ENTITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_180

    :cond_37
    const/16 v4, 0x19

    goto/16 :goto_180

    :sswitch_3b
    const-string v1, "EXIT_NEWCOMER_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_180

    :cond_45
    const/16 v4, 0x18

    goto/16 :goto_180

    :sswitch_49
    const-string v1, "CHANGE_RUNTIME_VARIABLES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_180

    :cond_53
    const/16 v4, 0x17

    goto/16 :goto_180

    :sswitch_57
    const-string v1, "SHOW_KEYBOARD_HELPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_180

    :cond_61
    const/16 v4, 0x16

    goto/16 :goto_180

    :sswitch_65
    const-string v1, "ACTOR_SET_PROPERTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_180

    :cond_6f
    const/16 v4, 0x15

    goto/16 :goto_180

    :sswitch_73
    const-string v1, "SET_STYLES_CENTER_POINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_180

    :cond_7d
    const/16 v4, 0x14

    goto/16 :goto_180

    :sswitch_81
    const-string v1, "TOGGLE_TILT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_180

    :cond_8b
    const/16 v4, 0x13

    goto/16 :goto_180

    :sswitch_8f
    const-string v1, "NEWCOMER_MODE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_180

    :cond_99
    const/16 v4, 0x12

    goto/16 :goto_180

    :sswitch_9d
    const-string v1, "EDIT_PROCEDURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_180

    :cond_a7
    const/16 v4, 0x11

    goto/16 :goto_180

    :sswitch_ab
    const-string v1, "SELECT_ACTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_180

    :cond_b5
    const/16 v4, 0x10

    goto/16 :goto_180

    :sswitch_b9
    const-string v1, "CREATION_TRACKER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto/16 :goto_180

    :cond_c3
    const/16 v4, 0xf

    goto/16 :goto_180

    :sswitch_c7
    const-string v1, "TOGGLE_ACCELEROMETER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_180

    :cond_d1
    const/16 v4, 0xe

    goto/16 :goto_180

    :sswitch_d5
    const-string v1, "DELETE_ACTORS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto/16 :goto_180

    :cond_df
    const/16 v4, 0xd

    goto/16 :goto_180

    :sswitch_e3
    const-string v1, "SHOW_CONFIRM_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto/16 :goto_180

    :cond_ed
    const/16 v4, 0xc

    goto/16 :goto_180

    :sswitch_f1
    const-string v1, "LOAD_BCM_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    goto/16 :goto_180

    :cond_fb
    const/16 v4, 0xb

    goto/16 :goto_180

    :sswitch_ff
    const-string v1, "ACTOR_PIVOT_CAN_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_109

    goto/16 :goto_180

    :cond_109
    const/16 v4, 0xa

    goto/16 :goto_180

    :sswitch_10d
    const-string v1, "UPDATE_UNDO_STACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_117

    goto/16 :goto_180

    :cond_117
    const/16 v4, 0x9

    goto/16 :goto_180

    :sswitch_11b
    const-string v1, "SHOW_HELP_PAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_125

    goto/16 :goto_180

    :cond_125
    const/16 v4, 0x8

    goto/16 :goto_180

    :sswitch_129
    const-string v1, "UPDATE_STYLE_CONTENT_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    goto :goto_180

    :cond_132
    const/4 v4, 0x7

    goto :goto_180

    :sswitch_134
    const-string v1, "USER_LOGIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_180

    :cond_13d
    const/4 v4, 0x6

    goto :goto_180

    :sswitch_13f
    const-string v1, "FINISH_USER_AGREEMENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    goto :goto_180

    :cond_148
    const/4 v4, 0x5

    goto :goto_180

    :sswitch_14a
    const-string v1, "ROOT_BLOCK_VISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    goto :goto_180

    :cond_153
    const/4 v4, 0x4

    goto :goto_180

    :sswitch_155
    const-string v1, "ENABLE_VOICE_DETECTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15e

    goto :goto_180

    :cond_15e
    const/4 v4, 0x3

    goto :goto_180

    :sswitch_160
    const-string v1, "THEATRE_FULL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_169

    goto :goto_180

    :cond_169
    const/4 v4, 0x2

    goto :goto_180

    :sswitch_16b
    const-string v1, "TOGGLE_BLUETOOTH_CONNECTION_PAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_174

    goto :goto_180

    :cond_174
    const/4 v4, 0x1

    goto :goto_180

    :sswitch_176
    const-string v1, "SHOW_TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17f

    goto :goto_180

    :cond_17f
    const/4 v4, 0x0

    :goto_180
    const/4 v0, 0x0

    packed-switch v4, :pswitch_data_4c8

    .line 251
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    if-eqz v0, :cond_454

    .line 252
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$baseType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_454

    .line 150
    :pswitch_199  #0x1b
    :try_start_199
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "audio"

    .line 151
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->stopSoundPlayer(Ljava/lang/String;)V
    :try_end_1af
    .catch Lorg/json/JSONException; {:try_start_199 .. :try_end_1af} :catch_1b1

    goto/16 :goto_454

    :catch_1b1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_454

    .line 87
    :pswitch_1b7  #0x19
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/SelectEntityMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SelectEntityMsg;

    .line 89
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->onSelectEntity(Lcom/codemao/creativestore/bean/SelectEntityMsg;)V

    goto/16 :goto_454

    .line 119
    :pswitch_1d0  #0x18
    :try_start_1d0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "area"

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->completeBlockGuide(Ljava/lang/String;)V
    :try_end_1e6
    .catch Lorg/json/JSONException; {:try_start_1d0 .. :try_end_1e6} :catch_1e8

    goto/16 :goto_454

    .line 123
    :catch_1e8
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->completeBlockGuide(Ljava/lang/String;)V

    goto/16 :goto_454

    .line 105
    :pswitch_1f5  #0x17
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    .line 106
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->getRuntimeVariableMsg(Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V

    goto/16 :goto_454

    .line 194
    :pswitch_20e  #0x16
    :try_start_20e
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 195
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showHelp(Ljava/lang/String;)V
    :try_end_224
    .catch Lorg/json/JSONException; {:try_start_20e .. :try_end_224} :catch_226

    goto/16 :goto_454

    :catch_226
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_454

    .line 113
    :pswitch_22c  #0x15
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    .line 114
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->setActorProperty(Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;)Ljava/lang/String;

    goto/16 :goto_454

    .line 141
    :pswitch_245  #0x14
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;

    .line 142
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->setActorCenterPoint(Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;)V

    goto/16 :goto_454

    .line 169
    :pswitch_25e  #0x13
    :try_start_25e
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_264
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_264} :catch_264

    .line 173
    :catch_264
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->toggleTiltEnable(Z)V

    goto/16 :goto_454

    .line 92
    :pswitch_26f  #0x12
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->newComerModeFinish()V

    goto/16 :goto_454

    .line 225
    :pswitch_27a  #0x11
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->startEditProcedur()V

    goto/16 :goto_454

    .line 127
    :pswitch_285  #0x10
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/ActorSelectMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorSelectMsg;

    .line 128
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->selectActor(Lcom/codemao/creativestore/bean/ActorSelectMsg;)V

    goto/16 :goto_454

    .line 204
    :pswitch_29e  #0xf
    :try_start_29e
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v3, Lcom/codemao/creativestore/bean/TrackerMsg;

    invoke-virtual {v1, v2, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/TrackerMsg;

    .line 205
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/TrackerMsg;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_301

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/TrackerMsg;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_301

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 207
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/TrackerMsg;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2cd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_301

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 209
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2ef

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2cd

    .line 212
    :cond_2ef
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2cd

    .line 218
    :cond_301
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v2}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/TrackerMsg;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/TrackerMsg;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->trackWeb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_312
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_312} :catch_454

    goto/16 :goto_454

    .line 160
    :pswitch_314  #0xe
    :try_start_314
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_31a
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_31a} :catch_31a

    .line 164
    :catch_31a
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->toggleAccelerometerenable(Z)V

    goto/16 :goto_454

    .line 109
    :pswitch_325  #0xd
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/ActorDeleteMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorDeleteMsg;

    .line 110
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->deleteActors(Lcom/codemao/creativestore/bean/ActorDeleteMsg;)V

    goto/16 :goto_454

    .line 232
    :pswitch_33e  #0xc
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v3, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;

    invoke-virtual {v1, v2, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ConfirmDialogMsg;

    .line 233
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v2}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showConfirmDialog(Lcom/codemao/creativestore/bean/ConfirmDialogMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    goto/16 :goto_454

    .line 96
    :pswitch_357  #0xb
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->loadBcmDone()V

    goto/16 :goto_454

    .line 132
    :pswitch_362  #0xa
    :try_start_362
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "actor_id"

    .line 133
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "can_reset"

    .line 134
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 135
    iget-object v2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v2}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->actorPivotCanReset(Ljava/lang/String;Z)V
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_37e} :catch_380

    goto/16 :goto_454

    :catch_380
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_454

    .line 189
    :pswitch_386  #0x9
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/BlockUpdateMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/BlockUpdateMsg;

    .line 190
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->updateUndoStack(Lcom/codemao/creativestore/bean/BlockUpdateMsg;)V

    goto/16 :goto_454

    .line 236
    :pswitch_39f  #0x8
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/OnlyTypeMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/OnlyTypeMsg;

    .line 237
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/OnlyTypeMsg;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showWebDialog(Ljava/lang/String;)V

    goto/16 :goto_454

    .line 146
    :pswitch_3bc  #0x7
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->updateStyleContentDone()V

    goto/16 :goto_454

    .line 99
    :pswitch_3c7  #0x6
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->login()V

    goto/16 :goto_454

    .line 242
    :pswitch_3d2  #0x4
    :try_start_3d2
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "visible"

    .line 243
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e2

    goto :goto_3e3

    :cond_3e2
    const/4 v2, 0x0

    .line 245
    :goto_3e3
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->rootBlockVisible(Z)V
    :try_end_3ec
    .catch Lorg/json/JSONException; {:try_start_3d2 .. :try_end_3ec} :catch_3ed

    goto :goto_454

    :catch_3ed
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_454

    .line 176
    :pswitch_3f2  #0x3
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;

    .line 177
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/EnableVoiceDetectionMsg;->isEnable()Z

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->voiceDetectionEnable(Z)V

    goto :goto_454

    .line 181
    :pswitch_40e  #0x2
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->fullScreen()V

    goto :goto_454

    .line 228
    :pswitch_418  #0x1
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v3, Lcom/codemao/creativestore/bean/ToggleBluetoothConnectionPage;

    invoke-virtual {v0, v1, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ToggleBluetoothConnectionPage;

    .line 229
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ToggleBluetoothConnectionPage;->isVisible()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->visibleLeftBar(Z)V

    goto :goto_454

    .line 184
    :pswitch_435  #0x0
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->val$payloadStr:Ljava/lang/String;

    const-class v2, Lcom/codemao/creativestore/bean/ShowToastMsg;

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ShowToastMsg;

    .line 185
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$1;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ShowToastMsg;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ShowToastMsg;->getPosition()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->showToast(Ljava/lang/String;Ljava/lang/String;)V

    :catch_454
    :cond_454
    :goto_454
    :pswitch_454  #0x5, 0x1a
    return-void

    nop

    :sswitch_data_456
    .sparse-switch
        -0x69551dbb -> :sswitch_176
        -0x63daa98c -> :sswitch_16b
        -0x5cf92eac -> :sswitch_160
        -0x5934e744 -> :sswitch_155
        -0x4fffb61d -> :sswitch_14a
        -0x3a396c5e -> :sswitch_13f
        -0x398d062b -> :sswitch_134
        -0x2e961934 -> :sswitch_129
        -0x1a445df5 -> :sswitch_11b
        -0x10bfbb7d -> :sswitch_10d
        -0xb69ae67 -> :sswitch_ff
        0xebfa6ee -> :sswitch_f1
        0x2207e949 -> :sswitch_e3
        0x33b7e632 -> :sswitch_d5
        0x4056e684 -> :sswitch_c7
        0x444219b8 -> :sswitch_b9
        0x4dc690d2 -> :sswitch_ab
        0x54596ebe -> :sswitch_9d
        0x5b51943e -> :sswitch_8f
        0x5b9cc8c8 -> :sswitch_81
        0x5f92a1c6 -> :sswitch_73
        0x60eb035c -> :sswitch_65
        0x6338c05c -> :sswitch_57
        0x673302c1 -> :sswitch_49
        0x708d2593 -> :sswitch_3b
        0x7279d886 -> :sswitch_2d
        0x7796dad9 -> :sswitch_1f
        0x78b37038 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_4c8
    .packed-switch 0x0
        :pswitch_435  #00000000
        :pswitch_418  #00000001
        :pswitch_40e  #00000002
        :pswitch_3f2  #00000003
        :pswitch_3d2  #00000004
        :pswitch_454  #00000005
        :pswitch_3c7  #00000006
        :pswitch_3bc  #00000007
        :pswitch_39f  #00000008
        :pswitch_386  #00000009
        :pswitch_362  #0000000a
        :pswitch_357  #0000000b
        :pswitch_33e  #0000000c
        :pswitch_325  #0000000d
        :pswitch_314  #0000000e
        :pswitch_29e  #0000000f
        :pswitch_285  #00000010
        :pswitch_27a  #00000011
        :pswitch_26f  #00000012
        :pswitch_25e  #00000013
        :pswitch_245  #00000014
        :pswitch_22c  #00000015
        :pswitch_20e  #00000016
        :pswitch_1f5  #00000017
        :pswitch_1d0  #00000018
        :pswitch_1b7  #00000019
        :pswitch_454  #0000001a
        :pswitch_199  #0000001b
    .end packed-switch
.end method
