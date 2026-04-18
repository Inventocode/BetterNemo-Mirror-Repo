.class public final Landroidx/navigation/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# direct methods
.method public static findNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 4

    .line 82
    invoke-static {p0}, Landroidx/navigation/Navigation;->findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 84
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 3

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_17

    .line 165
    invoke-static {p0}, Landroidx/navigation/Navigation;->getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    if-eqz v1, :cond_a

    return-object v1

    .line 169
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 170
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_15
    move-object p0, v0

    goto :goto_0

    :cond_17
    return-object v0
.end method

.method private static getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .registers 2

    .line 178
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 180
    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    .line 181
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    goto :goto_1b

    .line 182
    :cond_13
    instance-of v0, p0, Landroidx/navigation/NavController;

    if-eqz v0, :cond_1a

    .line 183
    check-cast p0, Landroidx/navigation/NavController;

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return-object p0
.end method

.method public static setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V
    .registers 3

    .line 154
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
