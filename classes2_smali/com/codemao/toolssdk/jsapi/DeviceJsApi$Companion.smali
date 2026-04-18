.class public final Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;
.super Ljava/lang/Object;
.source "DeviceJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/jsapi/DeviceJsApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setWebViewRenderGone(Z)V
    .registers 2

    .line 39
    invoke-static {p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->access$setWebViewRenderGone$cp(Z)V

    return-void
.end method
