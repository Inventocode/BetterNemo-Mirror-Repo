.class public Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;
.super Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi28Impl;
.source "OutputConfigurationCompatApi33Impl.java"


# direct methods
.method constructor <init>(ILandroid/view/Surface;)V
    .registers 4

    .line 36
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi28Impl;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static wrap(Landroid/hardware/camera2/params/OutputConfiguration;)Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;
    .registers 2

    .line 46
    new-instance v0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public setStreamUseCase(J)V
    .registers 6

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    return-void

    .line 54
    :cond_7
    invoke-virtual {p0}, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi33Impl;->getOutputConfiguration()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/params/OutputConfiguration;->setStreamUseCase(J)V

    return-void
.end method
