.class Lcom/codemao/creativestore/jsbridge/JsCallNative$3;
.super Ljava/lang/Object;
.source "JsCallNative.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/JsCallNative;->pluginPostMessageAsync(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

.field final synthetic val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/JsCallNative;Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4

    .line 419
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;->val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    iput-object p3, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;->this$0:Lcom/codemao/creativestore/jsbridge/JsCallNative;

    invoke-static {v0}, Lcom/codemao/creativestore/jsbridge/JsCallNative;->access$000(Lcom/codemao/creativestore/jsbridge/JsCallNative;)Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/JsCallNative$3;->val$jsCallNativeBaseBean:Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;

    new-instance v2, Lcom/codemao/creativestore/jsbridge/JsCallNative$3$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativestore/jsbridge/JsCallNative$3$1;-><init>(Lcom/codemao/creativestore/jsbridge/JsCallNative$3;)V

    invoke-interface {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;->onRecievePluginAsyncMsg(Lcom/codemao/creativestore/jsbridge/bean/PluginJsBridgeBaseBean;Lcom/codemao/creativestore/jsbridge/listener/PluginMsgResultListener;)V

    return-void
.end method
