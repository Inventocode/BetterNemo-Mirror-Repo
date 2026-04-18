.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WoodCameraJsApiX.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->start(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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
.field final synthetic $container:Landroid/view/View;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$container:Landroid/view/View;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 6

    if-eqz p1, :cond_10

    .line 83
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$container:Landroid/view/View;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$option:Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$start$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;)V

    goto :goto_28

    .line 85
    :cond_10
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x1bf0

    const-string v1, "app有其他摄像头在用"

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$start$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_28
    return-void
.end method
