.class Lcom/tencent/captchasdk/d;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/graphics/Rect;

.field private e:[F

.field private f:[I

.field private g:Z

.field private h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->a:Ljava/util/HashMap;

    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/captchasdk/d;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->d:Landroid/graphics/Rect;

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_3e

    iput-object v1, p0, Lcom/tencent/captchasdk/d;->e:[F

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->f:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_3e
    .array-data 4
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data

    :array_48
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private a()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_34

    new-array v4, v1, [I

    fill-array-data v4, :array_40

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x384

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    aget v5, v2, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/tencent/captchasdk/d$1;

    invoke-direct {v5, p0, v3}, Lcom/tencent/captchasdk/d$1;-><init>(Lcom/tencent/captchasdk/d;I)V

    invoke-direct {p0, v4, v5}, Lcom/tencent/captchasdk/d;->a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_34
    return-object v0

    nop

    :array_36
    .array-data 4
        0x0
        0x12c
        0x258
    .end array-data

    :array_40
    .array-data 4
        0xff
        0x33
        0xff
    .end array-data
.end method

.method private a(IIII)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->d:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 4

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .registers 5

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/captchasdk/d;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/captchasdk/d;)[I
    .registers 1

    iget-object p0, p0, Lcom/tencent/captchasdk/d;->f:[I

    return-object p0
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/tencent/captchasdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1e
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_24
    return-void
.end method

.method static synthetic b(Lcom/tencent/captchasdk/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->f()V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_8

    :cond_23
    return-void
.end method

.method private d()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/captchasdk/d;->g:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/captchasdk/d;->g:Z

    :cond_d
    return-void
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method private f()V
    .registers 1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private g()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private h()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->g()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x34

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000  # 6.0f

    div-float/2addr v1, v3

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->g()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v2, v2, v1

    add-float v4, v2, v0

    sub-float/2addr v3, v4

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->h()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_2a
    const/4 v6, 0x3

    if-ge v5, v6, :cond_58

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    mul-float v7, v2, v6

    add-float/2addr v7, v3

    mul-float v6, v6, v0

    add-float/2addr v7, v6

    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/tencent/captchasdk/d;->e:[F

    aget v7, v6, v5

    aget v6, v6, v5

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v6, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/tencent/captchasdk/d;->f:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Lcom/tencent/captchasdk/d;->h:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_58
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lcom/tencent/captchasdk/d;->c:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public isRunning()Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/d;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/tencent/captchasdk/d;->c:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->d()V

    iget-object v0, p0, Lcom/tencent/captchasdk/d;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/captchasdk/d;->c()V

    return-void
.end method
