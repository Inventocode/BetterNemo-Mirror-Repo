.class Lcn/codemao/android/sketch/xpopup/photoview/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# direct methods
.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 29
    invoke-static {p0, p1}, Lcn/codemao/android/sketch/xpopup/photoview/Compat;->postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_a
    const-wide/16 v0, 0x10

    .line 31
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private static postOnAnimationJellyBean(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
