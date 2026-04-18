.class public Landroidx/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# direct methods
.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 211
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 214
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    return-void
.end method

.method public static setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .registers 3

    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
