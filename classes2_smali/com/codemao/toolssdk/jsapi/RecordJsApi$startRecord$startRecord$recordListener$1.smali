.class public final Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$startRecord$recordListener$1;
.super Ljava/lang/Object;
.source "RecordJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$startRecord$recordListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecording(I)V
    .registers 6

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$startRecord$recordListener$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$sendSoundValue(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/view/ToolsWebView;D)V

    return-void
.end method
