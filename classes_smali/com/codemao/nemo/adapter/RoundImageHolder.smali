.class public Lcom/codemao/nemo/adapter/RoundImageHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RoundImageHolder.java"


# instance fields
.field public imageView:Lcom/codemao/nemo/view/RoundStrokeImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    const v1, 0x7f0a067a

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RoundImageHolder;->imageView:Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 20
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 21
    iget-object p1, p0, Lcom/codemao/nemo/adapter/RoundImageHolder;->imageView:Lcom/codemao/nemo/view/RoundStrokeImageView;

    if-eqz v0, :cond_1e

    const/high16 v0, 0x41000000  # 8.0f

    goto :goto_20

    :cond_1e
    const/high16 v0, 0x40800000  # 4.0f

    :goto_20
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmRadius(F)V

    return-void
.end method
