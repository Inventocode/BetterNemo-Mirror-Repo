.class public abstract Lcom/codemao/toolssdk/permissionx/dialog/RationaleDialog;
.super Landroid/app/Dialog;
.source "RationaleDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public abstract getNegativeButton()Landroid/view/View;
.end method

.method public abstract getPermissionsToRequest()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPositiveButton()Landroid/view/View;
.end method
