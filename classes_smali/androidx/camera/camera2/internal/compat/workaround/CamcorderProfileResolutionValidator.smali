.class public Landroidx/camera/camera2/internal/compat/workaround/CamcorderProfileResolutionValidator;
.super Ljava/lang/Object;
.source "CamcorderProfileResolutionValidator.java"


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/compat/quirk/CamcorderProfileResolutionQuirk;->getSupportedResolutions()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_12

    .line 45
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    :goto_12
    return-void
.end method
