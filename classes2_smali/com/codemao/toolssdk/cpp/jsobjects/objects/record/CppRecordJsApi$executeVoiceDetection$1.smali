.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppRecordJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->executeVoiceDetection()V
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
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;


# direct methods
.method public static synthetic $r8$lambda$4n3bfTHFJEMupWpLsgVXSb7gLog(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;D)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;->invoke$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;D)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;D)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$sendSoundValue(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 344
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;->invoke(D)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(D)V
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;D)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method
