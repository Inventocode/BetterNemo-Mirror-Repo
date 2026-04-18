.class Lcn/codemao/android/sketch/adapter/PaintAdapter$3;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "PaintAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/adapter/PaintAdapter;->unselAnim(Lcn/codemao/android/sketch/adapter/PaintAdapter$Holder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/adapter/PaintAdapter;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 3

    .line 205
    iput-object p2, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$3;->val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 214
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcn/codemao/android/sketch/adapter/PaintAdapter$3;->val$viewPropertyAnimatorCompat:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 208
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationStart(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
