.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppFileJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addCameraImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 715
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 4

    if-eqz p1, :cond_c

    .line 717
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$addCameraImage$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_15

    .line 719
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/16 v1, 0x1bf0

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$addCameraImage$fail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    :goto_15
    return-void
.end method
