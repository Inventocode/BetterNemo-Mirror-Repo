.class final Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CameraHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/func/camera/CameraHelper;->startCamera(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/view/PreviewView;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/camera/core/CameraState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;

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

    .line 119
    check-cast p1, Landroidx/camera/core/CameraState;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1;->invoke(Landroidx/camera/core/CameraState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/camera/core/CameraState;)V
    .registers 4

    .line 120
    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->getError()Landroidx/camera/core/CameraState$StateError;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 122
    invoke-virtual {v0}, Landroidx/camera/core/CameraState$StateError;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    .line 152
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "未知错误回调"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 148
    :pswitch_15  #0x7
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "请勿打扰模式已启用"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 144
    :pswitch_1d  #0x6
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "相机致命错误"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 140
    :pswitch_25  #0x5
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "相机被禁用"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 124
    :pswitch_2d  #0x4
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "流配置错误"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 136
    :pswitch_35  #0x3
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "其他可恢复错误"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 128
    :pswitch_3d  #0x2
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "相机已被占用"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_4c

    .line 132
    :pswitch_45  #0x1
    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v1, "已达到最大相机使用数量"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    .line 158
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->getType()Landroidx/camera/core/CameraState$Type;

    move-result-object p1

    sget-object v0, Lcom/codemao/toolssdk/func/camera/CameraHelper$startCamera$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_67

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5f

    goto :goto_6e

    .line 163
    :cond_5f
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v0, "相机已关闭"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    goto :goto_6e

    .line 159
    :cond_67
    sget-object p1, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    const-string v0, "相机待启动"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/func/camera/CameraLog;->d(Ljava/lang/String;)V

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_45  #00000001
        :pswitch_3d  #00000002
        :pswitch_35  #00000003
        :pswitch_2d  #00000004
        :pswitch_25  #00000005
        :pswitch_1d  #00000006
        :pswitch_15  #00000007
    .end packed-switch
.end method
