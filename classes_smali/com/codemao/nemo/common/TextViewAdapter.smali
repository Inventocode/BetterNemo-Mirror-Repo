.class public Lcom/codemao/nemo/common/TextViewAdapter;
.super Ljava/lang/Object;
.source "TextViewAdapter.java"


# direct methods
.method public static loadImage(Lcom/ljwx/baseview/text/DrawableTextView;I)V
    .registers 3

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/text/DrawableTextView;->setDrawableTop(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    return-void
.end method
