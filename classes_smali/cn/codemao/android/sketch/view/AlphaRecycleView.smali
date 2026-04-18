.class public Lcn/codemao/android/sketch/view/AlphaRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AlphaRecycleView.java"


# instance fields
.field private bottomRect:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/AlphaRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/codemao/android/sketch/R$drawable;->test:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->paint:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    .line 48
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 67
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->bottomRect:Landroid/graphics/RectF;

    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 59
    iget-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->bottomRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 60
    iget-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->bottomRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 61
    iget-object p1, p0, Lcn/codemao/android/sketch/view/AlphaRecycleView;->bottomRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41c80000  # 25.0f

    invoke-static {p3, p4}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method
