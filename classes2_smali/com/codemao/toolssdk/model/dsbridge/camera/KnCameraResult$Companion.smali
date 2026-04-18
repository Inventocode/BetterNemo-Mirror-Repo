.class public final Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;
.super Ljava/lang/Object;
.source "KnCameraData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClose()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;
    .registers 4

    .line 50
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;

    const-string v1, "close"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
