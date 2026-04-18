.class public final Lcom/codemao/toolssdk/jsapi/DialogJsApi;
.super Ljava/lang/Object;
.source "DialogJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/DialogJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogJsApi.kt\ncom/codemao/toolssdk/jsapi/DialogJsApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,171:1\n1#2:172\n37#3,2:173\n*S KotlinDebug\n*F\n+ 1 DialogJsApi.kt\ncom/codemao/toolssdk/jsapi/DialogJsApi\n*L\n104#1:173,2\n*E\n"
.end annotation


# instance fields
.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/DialogJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/DialogJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-void
.end method

.method private final showInputPop(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;Z)V
    .registers 6

    .line 121
    sget-object v0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->Companion:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;

    .line 122
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "toolsWebView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v2, Lcom/codemao/toolssdk/jsapi/DialogJsApi$showInputPop$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/DialogJsApi$showInputPop$1;-><init>(Lcom/codemao/toolssdk/jsapi/DialogJsApi;)V

    .line 121
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$Companion;->open(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;ZLcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;)V

    return-void
.end method


# virtual methods
.method public final completeText(Lcom/codemao/toolssdk/view/ToolsWebView;Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 162
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;->getTypeArray()Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string p2, "completeText"

    .line 160
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 165
    sget-object v1, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/jsapi/DialogJsApi$completeText$1;

    invoke-direct {v0, p2, p3}, Lcom/codemao/toolssdk/jsapi/DialogJsApi$completeText$1;-><init>(Lcom/google/gson/Gson;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1, v2, v0, p4}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/view/ToolsWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object v0
.end method

.method public final openInputDialog(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v1, v2}, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->showInputPop(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;Z)V

    .line 42
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 44
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openInputDialog,msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dJSDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final openInputDialogWithConfig(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 50
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, v1, v2}, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->showInputPop(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;Z)V

    .line 52
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 54
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openInputDialogWithConfig,msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dJSDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final openInputDialogWithConfigArray(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 60
    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, v1, v2}, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->showInputPop(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;Z)V

    .line 62
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 64
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openInputDialogWithConfigArray,msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dJSDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final openListEditorDialog(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_20

    .line 81
    :cond_18
    new-instance v2, Lcom/codemao/toolssdk/jsapi/DialogJsApi$openListEditorDialog$1;

    invoke-direct {v2, p2, v0}, Lcom/codemao/toolssdk/jsapi/DialogJsApi$openListEditorDialog$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/google/gson/Gson;)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 100
    :goto_20
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/codemao/toolssdk/model/dsbridge/ListEditorOptions;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ListEditorOptions;

    .line 101
    iget-object p2, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of v0, p2, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    check-cast p2, Landroid/app/Activity;

    goto :goto_3d

    :cond_3c
    move-object p2, v1

    :goto_3d
    if-eqz p2, :cond_5b

    .line 103
    sget-object v0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->Companion:Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;

    .line 104
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ListEditorOptions;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_50

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 104
    :cond_50
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ListEditorOptions;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ListEditorOptions;->getType()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {v0, p2, v1, v2, p1}, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$Companion;->startActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return-void
.end method

.method public final openWebBrowserWithConfig(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 70
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/WebDialogOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/WebDialogOptions;

    .line 71
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WebDialogOptions;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    sget-object v1, Lcom/codemao/toolssdk/activity/WebActivity;->Companion:Lcom/codemao/toolssdk/activity/WebActivity$Companion;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/codemao/toolssdk/activity/WebActivity$Companion;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    :cond_2e
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final showToast(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 112
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DialogJsShowToast;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DialogJsShowToast;

    .line 113
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DialogJsShowToast;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    :goto_2d
    if-nez v1, :cond_3d

    .line 114
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/DialogJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DialogJsShowToast;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    invoke-static {v1, p1, v2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 116
    :cond_3d
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
