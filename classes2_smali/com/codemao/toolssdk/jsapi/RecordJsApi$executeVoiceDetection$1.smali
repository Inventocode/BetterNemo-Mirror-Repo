.class final Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/RecordJsApi;->executeVoiceDetection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;


# direct methods
.method public static synthetic $r8$lambda$Y7PxUIyxWAYcTI8CIHkzymDfSlM(Lcom/codemao/toolssdk/jsapi/RecordJsApi;D)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;->invoke$lambda$0(Lcom/codemao/toolssdk/jsapi/RecordJsApi;D)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/jsapi/RecordJsApi;D)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$sendSoundValue(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/view/ToolsWebView;D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 406
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;->invoke(D)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(D)V
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;D)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method
