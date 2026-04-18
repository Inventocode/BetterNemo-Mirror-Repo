.class public Landroidx/camera/camera2/internal/Camera2CamcorderProfileProvider;
.super Ljava/lang/Object;
.source "Camera2CamcorderProfileProvider.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_22

    .line 49
    :catch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera id is not an integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unable to create CamcorderProfileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2CamcorderProfileProvider"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_22
    invoke-static {p1, p2}, Landroidx/camera/camera2/internal/compat/quirk/CameraQuirks;->get(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraCharacteristicsCompat;)Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class p2, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 55
    invoke-virtual {p1, p2}, Landroidx/camera/core/impl/Quirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;

    .line 56
    new-instance p2, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;

    invoke-direct {p2, p1}, Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;-><init>(Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;)V

    return-void
.end method
