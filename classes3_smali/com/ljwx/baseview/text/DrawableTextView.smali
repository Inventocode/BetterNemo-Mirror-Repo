.class public Lcom/ljwx/baseview/text/DrawableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "DrawableTextView.java"


# instance fields
.field private drawableBottom:Landroid/graphics/drawable/Drawable;

.field private drawableHeight:I

.field private drawableLeft:Landroid/graphics/drawable/Drawable;

.field private drawablePadding:I

.field private drawableRight:Landroid/graphics/drawable/Drawable;

.field private drawableSize:I

.field private drawableTop:Landroid/graphics/drawable/Drawable;

.field private drawableWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/baseview/text/DrawableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 15
    iput-object p3, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    .line 31
    sget-object p3, Lcom/ljwx/baseview/R$styleable;->DrawableTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p2, :cond_62

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 35
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableRight:I

    if-ne v1, v2, :cond_29

    .line 36
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_5f

    .line 37
    :cond_29
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableLeft:I

    if-ne v1, v2, :cond_34

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_5f

    .line 39
    :cond_34
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableTop:I

    if-ne v1, v2, :cond_3f

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    goto :goto_5f

    .line 41
    :cond_3f
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableBottom:I

    if-ne v1, v2, :cond_4a

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    goto :goto_5f

    .line 43
    :cond_4a
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableWidth:I

    if-ne v1, v2, :cond_55

    .line 44
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    goto :goto_5f

    .line 45
    :cond_55
    sget v2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableHeight:I

    if-ne v1, v2, :cond_5f

    .line 46
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 49
    :cond_62
    sget p2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableSize:I

    if-lez p2, :cond_70

    .line 51
    iput p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    .line 52
    iput p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    .line 54
    :cond_70
    iget-object p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_7b

    .line 55
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    :cond_7b
    iget-object p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_86

    .line 58
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    :cond_86
    iget-object p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_91

    .line 61
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    :cond_91
    iget-object p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9c

    .line 64
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    invoke-virtual {p2, p3, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    :cond_9c
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result p2

    iput p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawablePadding:I

    .line 67
    sget p2, Lcom/ljwx/baseview/R$styleable;->DrawableTextView_drawableShow:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_b6

    .line 69
    iget-object p2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2, p3, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    :cond_b6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setDrawableBottom(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 90
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableHeight(I)V
    .registers 2

    .line 113
    iput p1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    return-void
.end method

.method public setDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_a

    .line 103
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    :cond_a
    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_a

    .line 96
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    :cond_a
    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableShow(Z)V
    .registers 5

    if-eqz p1, :cond_13

    .line 76
    iget p1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawablePadding:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 77
    iget-object p1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    :cond_13
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1b
    return-void
.end method

.method public setDrawableTop(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 85
    iget v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    iget v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v0, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableWidth(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/ljwx/baseview/text/DrawableTextView;->drawableWidth:I

    return-void
.end method
