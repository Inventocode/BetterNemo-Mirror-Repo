.class public Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# direct methods
.method private static haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    if-nez p1, :cond_b

    const/4 v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_c
    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    if-nez p0, :cond_12

    return v0

    .line 338
    :cond_12
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_2e

    .line 343
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2e
    return v0
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 4

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_24

    if-nez p1, :cond_f

    .line 70
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_24

    .line 73
    :cond_f
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1a

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    .line 77
    :cond_1a
    invoke-static {p1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 80
    :cond_21
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .registers 3

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
