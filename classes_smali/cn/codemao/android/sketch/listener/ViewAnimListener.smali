.class public Lcn/codemao/android/sketch/listener/ViewAnimListener;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewAnimListener.java"


# instance fields
.field private viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method public constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/codemao/android/sketch/listener/ViewAnimListener;->viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 42
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationCancel(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    iget-object p1, p0, Lcn/codemao/android/sketch/listener/ViewAnimListener;->viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 45
    iput-object v0, p0, Lcn/codemao/android/sketch/listener/ViewAnimListener;->viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 33
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 35
    iget-object p1, p0, Lcn/codemao/android/sketch/listener/ViewAnimListener;->viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 36
    iput-object v0, p0, Lcn/codemao/android/sketch/listener/ViewAnimListener;->viewProperty:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationStart(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
