.class public final Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;
.super Ljava/lang/Object;
.source "FileJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/FileJsApi;->addAiImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 7

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->clearActivityResultListener()V

    :cond_f
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_69

    if-eqz p3, :cond_69

    const/4 p1, -0x1

    if-eq p2, p1, :cond_19

    goto :goto_69

    .line 125
    :cond_19
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$setInAddImagesProgress$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;Z)V

    const-string p1, "img_path"

    .line 126
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2e

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    const/4 p2, 0x1

    :cond_2f
    if-eqz p2, :cond_39

    .line 128
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addAiImage$cancelBody(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_68

    .line 131
    :cond_39
    iget-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result p2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    .line 132
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IActorBodyAiImage;

    invoke-direct {v2, v1, p1, p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IActorBodyAiImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    goto :goto_59

    .line 134
    :cond_4f
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ISceneBodyAiImage;

    invoke-direct {v2, v1, p1, p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBodyAiImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 136
    :goto_59
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-static {p3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_68
    return-void

    .line 122
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$addAiImage$cancelBody(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
