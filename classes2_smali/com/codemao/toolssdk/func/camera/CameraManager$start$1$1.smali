.class final Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/func/camera/CameraManager;->start(Landroid/content/Context;Landroid/view/View;Lcom/codemao/toolssdk/model/dsbridge/camera/JSICameraStartControl;Lkotlin/jvm/functions/Function3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/func/camera/CameraManager;Lkotlin/jvm/functions/Function3;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/func/camera/CameraManager;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    iput-object p2, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->$callback:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 85
    invoke-virtual {p0}, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->this$0:Lcom/codemao/toolssdk/func/camera/CameraManager;

    invoke-static {v0}, Lcom/codemao/toolssdk/func/camera/CameraManager;->access$getCameraHelper$p(Lcom/codemao/toolssdk/func/camera/CameraManager;)Lcom/codemao/toolssdk/func/camera/CameraHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper;->start()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    .line 87
    :goto_13
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "启动摄像头结果:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 88
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 89
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->$callback:Lkotlin/jvm/functions/Function3;

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 91
    :cond_3d
    iget-object v0, p0, Lcom/codemao/toolssdk/func/camera/CameraManager$start$1$1;->$callback:Lkotlin/jvm/functions/Function3;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v2, 0x1bf0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "摄像头启动失败"

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c
    return-void
.end method
