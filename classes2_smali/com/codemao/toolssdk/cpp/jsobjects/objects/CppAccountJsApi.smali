.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "CppAccountJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$Companion;
    }
.end annotation


# instance fields
.field private accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

.field private bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

.field private final gson:Lcom/google/gson/Gson;

.field private login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

.field private toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 22
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public final bindPhone(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;->bindPhone()V

    .line 31
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$bindPhone$1;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$bindPhone$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    .line 79
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    .line 80
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final getUserData(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生获取用户数据"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAccount(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->gson:Lcom/google/gson/Gson;

    .line 56
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 58
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v2

    goto :goto_26

    :cond_25
    move-object v2, v3

    :goto_26
    const/16 v4, 0x7d0

    .line 56
    invoke-direct {v1, v4, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "原生返回给web的用户数据："

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v3

    :cond_4a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAccount(Ljava/lang/String;)V

    return-void
.end method

.method public final login(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;->login()V

    .line 43
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$login$1;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi$login$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final setAccountCallback(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    return-void
.end method

.method public final setBindPhoneResult(Z)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;->result(Z)V

    :cond_7
    return-void
.end method

.method public final setLoginResult(Z)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;->result(Z)V

    :cond_7
    return-void
.end method
