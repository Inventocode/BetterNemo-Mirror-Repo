.class final Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FileJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $msg:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;


# direct methods
.method public static synthetic $r8$lambda$OG-U7SYBCexN3Co-6uBmcF0XwHA(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->invoke$lambda$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->$msg:Ljava/lang/Object;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 242
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 6

    if-eqz p1, :cond_24

    .line 244
    sget-object p1, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postOpenAlbumSucceedEvent(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    .line 245
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->$msg:Ljava/lang/Object;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    new-instance v3, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    .line 249
    :cond_24
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :goto_2b
    return-void
.end method
