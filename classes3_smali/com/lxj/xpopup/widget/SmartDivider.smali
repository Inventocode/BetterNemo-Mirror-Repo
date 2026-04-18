.class public Lcom/lxj/xpopup/widget/SmartDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SmartDivider.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DividerItem"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    .line 22
    sput-object v0, Lcom/lxj/xpopup/widget/SmartDivider;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mBounds:Landroid/graphics/Rect;

    .line 41
    sget-object v0, Lcom/lxj/xpopup/widget/SmartDivider;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_20

    const-string v0, "DividerItem"

    const-string v1, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {p0, p2}, Lcom/lxj/xpopup/widget/SmartDivider;->setOrientation(I)V

    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parent"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 131
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    .line 132
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 133
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v3

    .line 134
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    .line 133
    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2d

    .line 137
    :cond_28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    const/4 v0, 0x0

    .line 140
    :goto_2d
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_31
    if-ge v1, v3, :cond_67

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_38

    goto :goto_67

    .line 143
    :cond_38
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 144
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    iget-object v6, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 145
    iget-object v5, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v5, v4

    .line 146
    iget-object v4, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v5, v4

    .line 147
    iget-object v6, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    iget-object v4, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 150
    :cond_67
    :goto_67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parent"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 103
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    .line 104
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    .line 105
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 106
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 105
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2d

    .line 109
    :cond_28
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    const/4 v0, 0x0

    .line 112
    :goto_2d
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_31
    if-ge v1, v3, :cond_63

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_38

    goto :goto_63

    .line 115
    :cond_38
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 117
    iget-object v5, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v5, v4

    .line 118
    iget-object v4, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v5, v4

    .line 119
    iget-object v6, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 120
    iget-object v4, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 122
    :cond_63
    :goto_63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 156
    iget-object p2, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    if-nez p2, :cond_9

    .line 157
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 160
    :cond_9
    iget p4, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mOrientation:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_16

    .line 161
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1d

    .line 163
    :cond_16
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1d
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "parent",
            "state"
        }
    .end annotation

    .line 87
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-eqz p3, :cond_17

    iget-object p3, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_b

    goto :goto_17

    .line 90
    :cond_b
    iget p3, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mOrientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_14

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDivider;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_17

    .line 93
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/lxj/xpopup/widget/SmartDivider;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 74
    iput-object p1, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void

    .line 72
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Drawable cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOrientation(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 59
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_e
    :goto_e
    iput p1, p0, Lcom/lxj/xpopup/widget/SmartDivider;->mOrientation:I

    return-void
.end method
