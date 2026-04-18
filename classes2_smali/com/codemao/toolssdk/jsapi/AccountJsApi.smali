.class public final Lcom/codemao/toolssdk/jsapi/AccountJsApi;
.super Ljava/lang/Object;
.source "AccountJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/AccountJsApi$Companion;,
        Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;,
        Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;
    }
.end annotation


# instance fields
.field private accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

.field private bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

.field private final gson:Lcom/google/gson/Gson;

.field private login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/AccountJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/jsapi/AccountJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 24
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;->bindPhone()V

    .line 25
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/jsapi/AccountJsApi$bindPhone$1;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$bindPhone$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AccountJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    .line 64
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    .line 65
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final getUserData(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

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

    .line 36
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;->login()V

    .line 37
    :cond_11
    new-instance p1, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;

    invoke-direct {p1, p2, p0}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AccountJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    return-void
.end method

.method public final setAccountCallback(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->accountListener:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;

    return-void
.end method

.method public final setBindPhoneResult(Z)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->bindPhone:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;->result(Z)V

    :cond_7
    return-void
.end method

.method public final setLoginResult(Z)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->login:Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;->result(Z)V

    :cond_7
    return-void
.end method
