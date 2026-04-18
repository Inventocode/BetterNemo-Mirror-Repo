.class public final Landroidx/core/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# direct methods
.method static fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 561
    new-instance p0, Landroid/app/RemoteInput$Builder;

    const/4 p0, 0x0

    .line 562
    throw p0
.end method

.method static fromCompat([Landroidx/core/app/RemoteInput;)[Landroid/app/RemoteInput;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcArray"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 552
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/app/RemoteInput;

    const/4 v1, 0x0

    .line 553
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 554
    aget-object v2, p0, v1

    invoke-static {v2}, Landroidx/core/app/RemoteInput;->fromCompat(Landroidx/core/app/RemoteInput;)Landroid/app/RemoteInput;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method
