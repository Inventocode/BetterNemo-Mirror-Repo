.class public Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;
.super Ljava/lang/Object;
.source "CustomKeyboardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private capitalDrawable:Landroid/graphics/drawable/Drawable;

.field private deleteDrawable:Landroid/graphics/drawable/Drawable;

.field private drawableHeight:I

.field private drawableWidth:I

.field private keyBackground:Landroid/graphics/drawable/Drawable;

.field private keyDoneText:Ljava/lang/CharSequence;

.field private keyDoneTextColor:I

.field private keyDoneTextSize:I

.field private keyIconColor:Ljava/lang/Integer;

.field private keySpecialTextColor:I

.field private keyTextColor:I

.field private keyTextSize:I

.field private labelTextSize:I

.field private lowerDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icn_leyboard_backspace:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icn_keyboard_lower:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->lowerDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icn_keyboard_upper:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->capitalDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$dimen;->creative_keyboard_drawable_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->drawableWidth:I

    .line 274
    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->drawableHeight:I

    .line 277
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$dimen;->creative_keyboard_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->labelTextSize:I

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$dimen;->creative_keyboard_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyTextSize:I

    .line 282
    sget v0, Lcom/codemao/creativecenter/R$color;->creative_keyboard_key_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyTextColor:I

    .line 287
    sget v0, Lcom/codemao/creativecenter/R$color;->creative_keyboard_key_special_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keySpecialTextColor:I

    .line 290
    sget v0, Lcom/codemao/creativecenter/R$color;->creative_keyboard_key_done_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneTextColor:I

    .line 292
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_keyboard_key_bg:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$dimen;->creative_keyboard_done_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneTextSize:I

    const-string p1, "Enter"

    .line 297
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getCapitalDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->capitalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDeleteDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getDrawableHeight()I
    .registers 2

    .line 274
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->drawableHeight:I

    return v0
.end method

.method public final getDrawableWidth()I
    .registers 2

    .line 273
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->drawableWidth:I

    return v0
.end method

.method public final getKeyBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getKeyDoneText()Ljava/lang/CharSequence;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getKeyDoneTextColor()I
    .registers 2

    .line 289
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneTextColor:I

    return v0
.end method

.method public final getKeyDoneTextSize()I
    .registers 2

    .line 294
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyDoneTextSize:I

    return v0
.end method

.method public final getKeyIconColor()Ljava/lang/Integer;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyIconColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getKeySpecialTextColor()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keySpecialTextColor:I

    return v0
.end method

.method public final getKeyTextColor()I
    .registers 2

    .line 282
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyTextColor:I

    return v0
.end method

.method public final getKeyTextSize()I
    .registers 2

    .line 279
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->keyTextSize:I

    return v0
.end method

.method public final getLabelTextSize()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->labelTextSize:I

    return v0
.end method

.method public final getLowerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->lowerDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
