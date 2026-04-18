.class public Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;
.super Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;
.source "CustomKeyboardView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;,
        Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomKeyboardView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomKeyboardView.kt\ncom/codemao/creativecenter/customview/keyboard/CustomKeyboardView\n*L\n1#1,302:1\n*E\n"
.end annotation


# instance fields
.field private config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

.field private isAllCaps:Z

.field private final paint$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    sget-object v0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->paint$delegate:Lkotlin/Lazy;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget-object p3, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;->INSTANCE:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$paint$2;

    invoke-static {p3}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->paint$delegate:Lkotlin/Lazy;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final drawDeleteKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V
    .registers 14

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    const-string v1, "config"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeySpecialTextColor()I

    move-result v6

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getDeleteDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 122
    invoke-static/range {v2 .. v10}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    return-void
.end method

.method private final drawDoneKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V
    .registers 12

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    const-string v1, "config"

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyDoneText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    iput-object v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 108
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_23

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyDoneTextColor()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private final drawKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V
    .registers 15

    .line 85
    iget-object v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawShiftKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V

    goto/16 :goto_b6

    :cond_d
    const/4 v1, -0x2

    const-string v2, "config"

    if-ne v0, v1, :cond_35

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 91
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeySpecialTextColor()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 87
    invoke-static/range {v3 .. v11}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    goto/16 :goto_b6

    :cond_35
    const/4 v1, -0x5

    if-ne v0, v1, :cond_3d

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawDeleteKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V

    goto/16 :goto_b6

    :cond_3d
    const/16 v1, 0x20

    if-ne v0, v1, :cond_63

    .line 94
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_48

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_53
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyTextColor()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v11}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    goto :goto_b6

    :cond_63
    const/4 v1, -0x4

    if-ne v0, v1, :cond_6a

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawDoneKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V

    goto :goto_b6

    :cond_6a
    const/16 v1, -0x12c

    const/16 v3, -0x18f

    if-le v3, v0, :cond_71

    goto :goto_95

    :cond_71
    if-lt v1, v0, :cond_95

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_7a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7a
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_85

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_85
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeySpecialTextColor()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v11}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    goto :goto_b6

    .line 97
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_9c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9c
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_a7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_a7
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyTextColor()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x30

    const/4 v11, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v11}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    :goto_b6
    return-void
.end method

.method private final drawKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;Z)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p3, :cond_38

    .line 167
    iget-object v1, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_10

    .line 168
    invoke-virtual {p2}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 172
    :cond_10
    iget v1, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 173
    iget v2, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 174
    iget v3, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    .line 175
    iget v4, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    .line 171
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_38
    const/4 p3, 0x1

    const/high16 v1, 0x40000000  # 2.0f

    const-string v2, "config"

    if-eqz p5, :cond_bf

    .line 183
    invoke-static {p5}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 184
    iget-object p5, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p5, :cond_4a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4a
    invoke-virtual {p5}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyIconColor()Ljava/lang/Integer;

    move-result-object p5

    if-eqz p5, :cond_64

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p6

    if-eqz p6, :cond_57

    const/4 v0, 0x1

    :cond_57
    if-eqz v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 p5, 0x0

    :goto_5b
    if-eqz p5, :cond_64

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 185
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 188
    :cond_64
    iput-object p4, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p3, :cond_6d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6d
    invoke-virtual {p3}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getDrawableWidth()I

    move-result p3

    int-to-float p3, p3

    .line 191
    iget-object p4, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p4, :cond_79

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_79
    invoke-virtual {p4}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getDrawableHeight()I

    move-result p4

    int-to-float p4, p4

    .line 193
    iget p5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    .line 194
    iget p6, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    int-to-float p5, p5

    div-float v0, p3, p5

    int-to-float p6, p6

    div-float v2, p4, p6

    const/high16 v3, 0x3f000000  # 0.5f

    cmpg-float v4, v0, v2

    if-gtz v4, :cond_92

    .line 201
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    goto :goto_95

    .line 207
    :cond_92
    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    .line 213
    :goto_95
    iget v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr p5, p3

    div-float/2addr p5, v1

    add-float/2addr v0, p5

    float-to-int p5, v0

    .line 214
    iget v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr p6, p4

    div-float/2addr p6, v1

    add-float/2addr v0, p6

    float-to-int p6, v0

    int-to-float v0, p5

    add-float/2addr v0, p3

    float-to-int p3, v0

    int-to-float v0, p6

    add-float/2addr v0, p4

    float-to-int p4, v0

    .line 217
    iget-object v0, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p5, p6, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    iget-object p2, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_154

    .line 220
    :cond_bf
    iget-object p5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz p5, :cond_154

    if-eqz p6, :cond_d9

    .line 223
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object p6, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p6, :cond_d0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d0
    invoke-virtual {p6}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyDoneTextSize()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_10c

    .line 224
    :cond_d9
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-le p6, p3, :cond_f9

    iget-object p3, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->codes:[I

    array-length p3, p3

    const/4 p6, 0x2

    if-ge p3, p6, :cond_f9

    .line 225
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object p6, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p6, :cond_f0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f0
    invoke-virtual {p6}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getLabelTextSize()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_10c

    .line 227
    :cond_f9
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object p6, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez p6, :cond_104

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_104
    invoke-virtual {p6}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyTextSize()I

    move-result p6

    int-to-float p6, p6

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 229
    :goto_10c
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    sget-object p4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 233
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 234
    iget p4, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    add-int/2addr p4, p5

    int-to-float p4, p4

    iget p5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->width:I

    int-to-float p5, p5

    div-float/2addr p5, v1

    add-float/2addr p4, p5

    .line 235
    iget p5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p6

    add-int/2addr p5, p6

    int-to-float p5, p5

    iget p2, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->height:I

    int-to-float p2, p2

    div-float/2addr p2, v1

    add-float/2addr p5, p2

    .line 236
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p6

    invoke-virtual {p6}, Landroid/graphics/Paint;->descent()F

    move-result p6

    sub-float/2addr p2, p6

    div-float/2addr p2, v1

    add-float/2addr p5, p2

    .line 238
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    .line 232
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_154
    :goto_154
    return-void
.end method

.method static synthetic drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V
    .registers 16

    if-nez p8, :cond_1a

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_8

    .line 162
    iget-object p5, p2, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_8
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_10

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_11

    :cond_10
    move v6, p6

    :goto_11
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 0
    :cond_1a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawKey"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final drawKeyboard(Landroid/graphics/Canvas;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_16

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private final drawShiftKey(Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;)V
    .registers 14

    .line 136
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->isAllCaps:Z

    const-string v1, "config"

    if-eqz v0, :cond_32

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 140
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeySpecialTextColor()I

    move-result v6

    .line 141
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_23

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getCapitalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 136
    invoke-static/range {v2 .. v10}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    goto :goto_5d

    .line 147
    :cond_32
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_39

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_39
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeyBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_44

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_44
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getKeySpecialTextColor()I

    move-result v6

    .line 149
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_4f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4f
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;->getLowerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 144
    invoke-static/range {v2 .. v10}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKey$default(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;Landroid/graphics/Canvas;Lcom/codemao/creativecenter/customview/keyboard/Keyboard$Key;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ZILjava/lang/Object;)V

    :goto_5d
    return-void
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 51
    new-instance p2, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    .line 52
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    if-nez v0, :cond_9

    const-string v1, "config"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public final isAllCaps()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->isAllCaps:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/keyboard/KeyboardView;->getKeyboard()Lcom/codemao/creativecenter/customview/keyboard/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->drawKeyboard(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void
.end method

.method public final setAllCaps(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->isAllCaps:Z

    return-void
.end method

.method public final setConfig(Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView;->config:Lcom/codemao/creativecenter/customview/keyboard/CustomKeyboardView$Config;

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
