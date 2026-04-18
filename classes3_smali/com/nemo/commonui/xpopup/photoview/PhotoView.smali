.class public Lcom/nemo/commonui/xpopup/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field public attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .line 51
    new-instance v0, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    .line 54
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_16

    .line 57
    invoke-virtual {p0, v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_16
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 5

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 131
    iget-object p2, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {p2}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_b
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 107
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 114
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 115
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 122
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 123
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setMaximumScale(F)V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/nemo/commonui/xpopup/photoview/OnMatrixChangedListener;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/nemo/commonui/xpopup/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/nemo/commonui/xpopup/photoview/OnOutsidePhotoTapListener;)V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/nemo/commonui/xpopup/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/nemo/commonui/xpopup/photoview/OnPhotoTapListener;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/nemo/commonui/xpopup/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/nemo/commonui/xpopup/photoview/OnScaleChangedListener;)V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/nemo/commonui/xpopup/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/nemo/commonui/xpopup/photoview/OnSingleFlingListener;)V
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/nemo/commonui/xpopup/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/nemo/commonui/xpopup/photoview/OnViewDragListener;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnViewDragListener(Lcom/nemo/commonui/xpopup/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/nemo/commonui/xpopup/photoview/OnViewTapListener;)V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/nemo/commonui/xpopup/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    if-nez v0, :cond_7

    .line 96
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_a

    .line 98
    :cond_7
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_a
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/photoview/PhotoView;->attacher:Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
