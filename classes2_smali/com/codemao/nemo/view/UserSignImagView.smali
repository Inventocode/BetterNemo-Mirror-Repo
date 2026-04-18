.class public Lcom/codemao/nemo/view/UserSignImagView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "UserSignImagView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/nemo/view/UserSignImagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setUserLevel(IZ)V
    .registers 9

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz p2, :cond_41

    if-eqz p1, :cond_3d

    if-eq p1, v4, :cond_39

    if-eq p1, v3, :cond_32

    if-eq p1, v2, :cond_2b

    if-eq p1, v1, :cond_24

    if-eq p1, v0, :cond_1d

    .line 58
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_1d
    const p1, 0x7f0804e0

    .line 55
    invoke-static {p1, p0}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_74

    :cond_24
    const p1, 0x7f0804df

    .line 52
    invoke-static {p1, p0}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_74

    :cond_2b
    const p1, 0x7f0804de

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    :cond_32
    const p1, 0x7f0804dd

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    .line 43
    :cond_39
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 40
    :cond_3d
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_41
    if-eqz p1, :cond_71

    if-eq p1, v4, :cond_6d

    if-eq p1, v3, :cond_66

    if-eq p1, v2, :cond_5f

    if-eq p1, v1, :cond_58

    if-eq p1, v0, :cond_51

    .line 82
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    :cond_51
    const p1, 0x7f0804dc

    .line 79
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    :cond_58
    const p1, 0x7f0804db

    .line 76
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    :cond_5f
    const p1, 0x7f0804da

    .line 73
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    :cond_66
    const p1, 0x7f0804d9

    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_74

    .line 67
    :cond_6d
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_74

    .line 64
    :cond_71
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_74
    return-void
.end method
