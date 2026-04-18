.class public final Lcom/ljwx/recyclerview/itemtype/ItemTypeBindingKt;
.super Ljava/lang/Object;
.source "ItemTypeBinding.kt"


# direct methods
.method public static final getLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v0, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_c

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    return-object p0

    .line 42
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 44
    :goto_10
    instance-of v0, p0, Landroidx/core/app/ComponentActivity;

    if-eqz v0, :cond_17

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    return-object p0

    .line 45
    :cond_17
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_22

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    if-eqz p0, :cond_26

    goto :goto_10

    .line 47
    :cond_26
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "can not find LifecycleOwner"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
