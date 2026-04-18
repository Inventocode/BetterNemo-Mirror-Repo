.class public Lcom/lxj/xpopup/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field public attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attr"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attr",
            "defStyle"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/lxj/xpopup/photoview/PhotoView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .line 50
    new-instance v0, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 55
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_16

    .line 56
    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_16
    return-void
.end method


# virtual methods
.method public getAttacher()Lcom/lxj/xpopup/photoview/PhotoViewAttacher;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allow"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 131
    iget-object p2, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {p2}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_b
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 107
    invoke-virtual {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setImageResource(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resId"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 114
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 115
    invoke-virtual {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 121
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 122
    iget-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_a

    .line 123
    invoke-virtual {p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->update()V

    :cond_a
    return-void
.end method

.method public setMaximumScale(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maximumScale"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediumScale"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimumScale"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDoubleTapListener"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/lxj/xpopup/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcom/lxj/xpopup/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/lxj/xpopup/photoview/OnPhotoTapListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/lxj/xpopup/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/lxj/xpopup/photoview/OnScaleChangedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onScaleChangedListener"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/lxj/xpopup/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/lxj/xpopup/photoview/OnSingleFlingListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSingleFlingListener"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/lxj/xpopup/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcom/lxj/xpopup/photoview/OnViewDragListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnViewDragListener(Lcom/lxj/xpopup/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/lxj/xpopup/photoview/OnViewTapListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/lxj/xpopup/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationDegree"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationDegree"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleType"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    if-nez v0, :cond_7

    .line 95
    iput-object p1, p0, Lcom/lxj/xpopup/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_a

    .line 97
    :cond_7
    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_a
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliseconds"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomable"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/lxj/xpopup/photoview/PhotoView;->attacher:Lcom/lxj/xpopup/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
