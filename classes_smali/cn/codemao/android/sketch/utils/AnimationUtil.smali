.class public Lcn/codemao/android/sketch/utils/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static animAlpha(Landroid/view/View;Z)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    .line 86
    invoke-static {p0, p1, v0}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animAlpha(Landroid/view/View;ZF)V

    return-void
.end method

.method public static animAlpha(Landroid/view/View;ZF)V
    .registers 3

    .line 90
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    .line 91
    :cond_7
    invoke-virtual {p0, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 92
    new-instance p1, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 93
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public static animHorAndAlpha(ZLandroid/view/View;F)V
    .registers 3

    .line 45
    invoke-static {p0, p1, p2, p0}, Lcn/codemao/android/sketch/utils/AnimationUtil;->animHorAndAlpha(ZLandroid/view/View;FZ)V

    return-void
.end method

.method public static animHorAndAlpha(ZLandroid/view/View;FZ)V
    .registers 4

    .line 49
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    goto :goto_a

    :cond_8
    const/high16 p3, 0x3f800000  # 1.0f

    .line 50
    :goto_a
    invoke-virtual {p1, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p0, :cond_11

    neg-float p2, p2

    .line 51
    :cond_11
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 52
    new-instance p1, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 53
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public static animHorAndAlpha(ZLandroid/view/View;FZF)V
    .registers 5

    .line 58
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p3, :cond_7

    goto :goto_9

    :cond_7
    const/high16 p4, 0x3f800000  # 1.0f

    .line 59
    :goto_9
    invoke-virtual {p1, p4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p0, :cond_10

    neg-float p2, p2

    .line 60
    :cond_10
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationXBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 61
    new-instance p1, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public static animScaleAlpha(ZLandroid/view/View;FZ)V
    .registers 5

    .line 68
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p3, :cond_a

    const/4 p3, 0x0

    goto :goto_c

    :cond_a
    const/high16 p3, 0x3f800000  # 1.0f

    .line 69
    :goto_c
    invoke-virtual {p1, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p0, :cond_14

    move p3, p2

    goto :goto_16

    :cond_14
    const/high16 p3, 0x3f800000  # 1.0f

    .line 70
    :goto_16
    invoke-virtual {p1, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_1f
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 71
    new-instance p1, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public static animVer(Landroid/view/View;F)V
    .registers 4

    .line 78
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 79
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationYBy(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 80
    new-instance p1, Lcn/codemao/android/sketch/listener/ViewAnimListener;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/listener/ViewAnimListener;-><init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    const-wide/16 v0, 0xc8

    .line 81
    invoke-virtual {p0, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method
