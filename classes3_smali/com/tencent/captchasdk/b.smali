.class Lcom/tencent/captchasdk/b;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/tencent/captchasdk/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tencent/captchasdk/b;->b:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->c:F

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v3, v2

    iget v4, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v5, v4

    int-to-float v2, v2

    iget v6, p0, Lcom/tencent/captchasdk/b;->c:F

    const/high16 v7, 0x40000000  # 2.0f

    mul-float v8, v6, v7

    add-float/2addr v2, v8

    int-to-float v4, v4

    mul-float v6, v6, v7

    add-float/2addr v4, v6

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000  # -90.0f

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .registers 12

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/captchasdk/b;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/captchasdk/b;->f:I

    int-to-float v3, v2

    iget v4, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v5, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int v6, v4, v5

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/captchasdk/b;->c:F

    const/high16 v8, 0x40000000  # 2.0f

    mul-float v9, v7, v8

    sub-float/2addr v6, v9

    int-to-float v2, v2

    mul-float v7, v7, v8

    add-float/2addr v2, v7

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v1, v3, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000  # 90.0f

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 12

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/captchasdk/b;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int v4, v2, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/captchasdk/b;->c:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v8, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int v9, v7, v8

    int-to-float v9, v9

    mul-float v5, v5, v6

    sub-float/2addr v9, v5

    add-int/2addr v2, v3

    int-to-float v2, v2

    add-int/2addr v7, v8

    int-to-float v3, v7

    invoke-direct {v1, v4, v9, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000  # 90.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .registers 11

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tencent/captchasdk/b;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/captchasdk/b;->c:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v3, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int v4, v2, v3

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/captchasdk/b;->c:F

    const/high16 v6, 0x40000000  # 2.0f

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    iget v7, p0, Lcom/tencent/captchasdk/b;->g:I

    int-to-float v8, v7

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v7

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    invoke-direct {v1, v4, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, -0x3d4c0000  # -90.0f

    const/high16 v3, 0x42b40000  # 90.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/tencent/captchasdk/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public a(IIF)V
    .registers 4

    iput p3, p0, Lcom/tencent/captchasdk/b;->c:F

    iput p1, p0, Lcom/tencent/captchasdk/b;->d:I

    iput p2, p0, Lcom/tencent/captchasdk/b;->e:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/tencent/captchasdk/b;->f:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/tencent/captchasdk/b;->g:I

    iget v1, p0, Lcom/tencent/captchasdk/b;->f:I

    iget v2, p0, Lcom/tencent/captchasdk/b;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/tencent/captchasdk/b;->e:I

    add-int/2addr v0, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/tencent/captchasdk/b;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/tencent/captchasdk/b;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/tencent/captchasdk/b;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/tencent/captchasdk/b;->c(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/tencent/captchasdk/b;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
