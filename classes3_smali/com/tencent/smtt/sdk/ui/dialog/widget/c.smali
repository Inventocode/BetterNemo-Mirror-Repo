.class public Lcom/tencent/smtt/sdk/ui/dialog/widget/c;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IFFFF)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput p2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a:F

    iput p3, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->b:F

    iput p4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->d:F

    iput p5, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->c:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->g:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->g:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    int-to-float p1, p2

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->g:Landroid/graphics/RectF;

    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->b:F

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->d:F

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->c:F

    aput v4, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
