.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;
.super Ljava/lang/Object;
.source "CppFileJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/manager/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addAiImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResultCallback(IILandroid/content/Intent;)V
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->clearActivityResultListener()V

    :cond_f
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_69

    if-eqz p3, :cond_69

    const/4 p1, -0x1

    if-eq p2, p1, :cond_19

    goto :goto_69

    .line 204
    :cond_19
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$setInAddImagesProgress$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Z)V

    const-string p1, "img_path"

    .line 205
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    if-eqz p1, :cond_2e

    .line 206
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2f

    :cond_2e
    const/4 p2, 0x1

    :cond_2f
    if-eqz p2, :cond_39

    .line 207
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$addAiImage$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_68

    .line 210
    :cond_39
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result p2

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    .line 211
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IActorBodyAiImage;

    invoke-direct {v2, v1, p1, p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IActorBodyAiImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    goto :goto_59

    .line 213
    :cond_4f
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ISceneBodyAiImage;

    invoke-direct {v2, v1, p1, p3, v1}, Lcom/codemao/toolssdk/model/dsbridge/ISceneBodyAiImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 215
    :goto_59
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_68
    return-void

    .line 201
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$addAiImage$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method
