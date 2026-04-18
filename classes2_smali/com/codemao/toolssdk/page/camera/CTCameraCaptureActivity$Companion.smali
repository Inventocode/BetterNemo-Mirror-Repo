.class public final Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;
.super Ljava/lang/Object;
.source "CTCameraCaptureActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageKey()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {}, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;->access$getImageKey$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
