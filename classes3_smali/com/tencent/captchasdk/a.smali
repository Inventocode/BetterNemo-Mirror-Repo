.class Lcom/tencent/captchasdk/a;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/tencent/captchasdk/d;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/16 v0, 0x76

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/tencent/captchasdk/a;->b:I

    return-void
.end method

.method private a()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/captchasdk/a;->c:Z

    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private a(II)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1c
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/captchasdk/d;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/captchasdk/a;->c:Z

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private c()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_13
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean p1, p0, Lcom/tencent/captchasdk/a;->c:Z

    if-eqz p1, :cond_25

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/captchasdk/a;->c:Z

    :cond_25
    return-void
.end method

.method public a(Lcom/tencent/captchasdk/d;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eq v0, p1, :cond_1e

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iput-object p1, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    iget v0, p0, Lcom/tencent/captchasdk/a;->b:I

    invoke-virtual {p1, v0}, Lcom/tencent/captchasdk/d;->a(I)V

    if-eqz p1, :cond_1b

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1e
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_a
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->c()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/tencent/captchasdk/a;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_2f

    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->b()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/tencent/captchasdk/a;->a(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->c()V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-static {v2, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/tencent/captchasdk/a;->a(II)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p2, p1, :cond_f

    const/4 p1, 0x4

    if-ne p2, p1, :cond_b

    goto :goto_f

    :cond_b
    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->a()V

    goto :goto_12

    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->b()V

    :goto_12
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_18

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_15

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->a()V

    goto :goto_18

    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/tencent/captchasdk/a;->b()V

    :cond_18
    :goto_18
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/captchasdk/a;->a:Lcom/tencent/captchasdk/d;

    if-eq p1, v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method
