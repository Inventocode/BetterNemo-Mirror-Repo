.class public final Lcom/ljwx/recyclerview/holder/ViewHolder;
.super Lcom/ljwx/recyclerview/holder/ItemHolder;
.source "ViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/ljwx/recyclerview/holder/ItemHolder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/ljwx/recyclerview/holder/ItemHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
