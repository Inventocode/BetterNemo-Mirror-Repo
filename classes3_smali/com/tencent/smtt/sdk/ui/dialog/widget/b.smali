.class public Lcom/tencent/smtt/sdk/ui/dialog/widget/b;
.super Landroid/widget/Button;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

.field private h:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

.field private i:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;FFFFI)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->g:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->h:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->i:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iput p2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->c:F

    iput p3, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->d:F

    iput p4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->e:F

    iput p5, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->f:F

    iput p6, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->a:I

    const-string p1, "#D0D0D0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->b:I

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 11

    int-to-float v5, p2

    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move v3, v5

    move v4, v5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;-><init>(Landroid/content/Context;FFFFI)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    new-instance v6, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iget v1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->a:I

    iget v2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->c:F

    iget v3, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->d:F

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->e:F

    iget v5, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->f:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;-><init>(IFFFF)V

    iput-object v6, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->g:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    iget v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->a:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x50000000

    or-int v3, v1, v0

    new-instance v0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->c:F

    iget v5, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->d:F

    iget v6, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->e:F

    iget v7, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->f:F

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;-><init>(IFFFF)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->h:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    new-instance v0, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    iget v4, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->b:I

    iget v5, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->c:F

    iget v6, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->d:F

    iget v7, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->e:F

    iget v8, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->f:F

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;-><init>(IFFFF)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->i:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_8c

    iget-object v3, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->g:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    fill-array-data v1, :array_94

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->h:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    iget-object v2, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->i:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_8c
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    :array_94
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->g:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    if-eqz p1, :cond_e

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    :cond_e
    iget-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->h:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    if-eqz p1, :cond_19

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    :cond_19
    iget-object p1, p0, Lcom/tencent/smtt/sdk/ui/dialog/widget/b;->i:Lcom/tencent/smtt/sdk/ui/dialog/widget/c;

    if-eqz p1, :cond_22

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, p5}, Lcom/tencent/smtt/sdk/ui/dialog/widget/c;->a(II)V

    :cond_22
    return-void
.end method
