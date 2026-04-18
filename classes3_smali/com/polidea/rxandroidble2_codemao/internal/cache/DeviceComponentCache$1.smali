.class Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache$1;
.super Ljava/lang/Object;
.source "DeviceComponentCache.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;
    .registers 3

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    invoke-direct {v0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)V

    return-object v0
.end method
