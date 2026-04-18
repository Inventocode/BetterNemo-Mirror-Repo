.class public final Lcom/codemao/toolssdk/func/camera/CameraLog;
.super Ljava/lang/Object;
.source "CameraLog.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/camera/CameraLog;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/camera/CameraLog;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/camera/CameraLog;->INSTANCE:Lcom/codemao/toolssdk/func/camera/CameraLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method
