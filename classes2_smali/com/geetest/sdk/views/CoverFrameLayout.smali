.class public Lcom/geetest/sdk/views/CoverFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/geetest/sdk/z;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    goto :goto_18

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/geetest/sdk/views/CoverFrameLayout;->a:Lcom/geetest/sdk/z;

    if-nez v0, :cond_10

    goto :goto_18

    .line 4
    :cond_10
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/z;->b(Landroid/view/MotionEvent;)Landroid/view/View;

    throw v1

    .line 8
    :cond_14
    iget-object v0, p0, Lcom/geetest/sdk/views/CoverFrameLayout;->a:Lcom/geetest/sdk/z;

    if-nez v0, :cond_1d

    .line 13
    :goto_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 14
    :cond_1d
    invoke-virtual {v0, p1}, Lcom/geetest/sdk/z;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    throw v1
.end method
