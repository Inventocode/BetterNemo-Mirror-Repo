.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WoodCameraJsApiX.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->switchOrientation(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
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

.field final synthetic $this_apply:Landroid/os/Handler;

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;


# direct methods
.method public static synthetic $r8$lambda$PTvnPN-DUVHwpfl6CDWt_bHbyUI(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILjava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->invoke$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILjava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->$this_apply:Landroid/os/Handler;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILjava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->access$setSwitching$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;Z)V

    .line 121
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 123
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "通知web切换摄像头结果:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->invoke(ZILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZILjava/lang/String;)V
    .registers 7

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->$this_apply:Landroid/os/Handler;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$switchOrientation$1$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;ILjava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
