.class final Landroidx/camera/core/processing/AutoValue_SurfaceEdge;
.super Landroidx/camera/core/processing/SurfaceEdge;
.source "AutoValue_SurfaceEdge.java"


# instance fields
.field private final surfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/SettableSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/SettableSurface;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Landroidx/camera/core/processing/SurfaceEdge;-><init>()V

    const-string v0, "Null surfaces"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;->surfaces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 40
    :cond_4
    instance-of v0, p1, Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz v0, :cond_15

    .line 41
    check-cast p1, Landroidx/camera/core/processing/SurfaceEdge;

    .line 42
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;->surfaces:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/processing/SurfaceEdge;->getSurfaces()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public getSurfaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/SettableSurface;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;->surfaces:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 51
    iget-object v0, p0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;->surfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceEdge{surfaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/AutoValue_SurfaceEdge;->surfaces:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
