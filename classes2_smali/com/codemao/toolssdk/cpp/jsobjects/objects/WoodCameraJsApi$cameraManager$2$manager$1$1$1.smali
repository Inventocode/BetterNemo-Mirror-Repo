.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WoodCameraJsApiX.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2;->invoke()Lcom/codemao/toolssdk/func/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 30
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi$cameraManager$2$manager$1$1$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V
    .registers 5

    .line 31
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "通知web关闭摄像头:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method
