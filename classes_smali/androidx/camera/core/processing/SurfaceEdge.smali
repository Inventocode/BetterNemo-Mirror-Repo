.class public abstract Landroidx/camera/core/processing/SurfaceEdge;
.super Ljava/lang/Object;
.source "SurfaceEdge.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Landroidx/camera/core/processing/SurfaceEdge;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/SettableSurface;",
            ">;)",
            "Landroidx/camera/core/processing/SurfaceEdge;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;

    invoke-direct {v0, p0}, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getSurfaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/SettableSurface;",
            ">;"
        }
    .end annotation
.end method
