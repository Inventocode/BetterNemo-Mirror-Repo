.class Lcom/codemao/creativestore/jsbridge/JsCallNative$2;
.super Ljava/lang/Object;
.source "JsCallNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/JsCallNative;->pluginPostMessageSync(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

.field final synthetic val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V
    .registers 3

    .line 402
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;->val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$2;->val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    invoke-interface {v0, v1}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->onRecievePluginSyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;)V

    return-void
.end method
