.class public Lcom/lxj/xpopup/util/XPopupUtils;
.super Ljava/lang/Object;
.source "XPopupUtils.java"


# static fields
.field private static final HEX_DIGITS_LOWER:[C

.field private static final HEX_DIGITS_UPPER:[C

.field private static preKeyboardHeight:I

.field private static sDecorViewDelta:I


# direct methods
.method public static synthetic $r8$lambda$9BsypzhWABXpdTxBUm1-d6p-T8E(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/lxj/xpopup/util/XPopupUtils;->lambda$applyPopupSize$1(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qS6sUHnDp6axrzd_q6LpLC0sMBA(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/lxj/xpopup/util/XPopupUtils;->lambda$null$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 721
    fill-array-data v1, :array_12

    sput-object v1, Lcom/lxj/xpopup/util/XPopupUtils;->HEX_DIGITS_UPPER:[C

    new-array v0, v0, [C

    .line 723
    fill-array-data v0, :array_26

    sput-object v0, Lcom/lxj/xpopup/util/XPopupUtils;->HEX_DIGITS_LOWER:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static synthetic access$000()I
    .registers 1

    .line 83
    sget v0, Lcom/lxj/xpopup/util/XPopupUtils;->preKeyboardHeight:I

    return v0
.end method

.method static synthetic access$100(ILcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2

    .line 83
    invoke-static {p0, p1}, Lcom/lxj/xpopup/util/XPopupUtils;->moveUpToKeyboardInternal(ILcom/lxj/xpopup/core/BasePopupView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-static {p0, p1}, Lcom/lxj/xpopup/util/XPopupUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    .registers 2

    .line 83
    invoke-static {p0, p1}, Lcom/lxj/xpopup/util/XPopupUtils;->writeFileFromIS(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result p0

    return p0
.end method

.method public static applyPopupSize(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "content",
            "maxWidth",
            "maxHeight",
            "popupWidth",
            "popupHeight",
            "afterApplySize"
        }
    .end annotation

    .line 173
    new-instance v7, Lcom/lxj/xpopup/util/XPopupUtils$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lxj/xpopup/util/XPopupUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bytes2HexString([BZ)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "bytes",
            "isUpperCase"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    if-eqz p1, :cond_a

    .line 728
    sget-object p1, Lcom/lxj/xpopup/util/XPopupUtils;->HEX_DIGITS_UPPER:[C

    goto :goto_c

    :cond_a
    sget-object p1, Lcom/lxj/xpopup/util/XPopupUtils;->HEX_DIGITS_LOWER:[C

    .line 729
    :goto_c
    array-length v1, p0

    if-gtz v1, :cond_10

    return-object v0

    :cond_10
    shl-int/lit8 v0, v1, 0x1

    .line 731
    new-array v0, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v2, v1, :cond_31

    add-int/lit8 v4, v3, 0x1

    .line 733
    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    .line 734
    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 736
    :cond_31
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static context2Activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 597
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 598
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 599
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 601
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/BitmapDrawable;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "color"
        }
    .end annotation

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 232
    invoke-static {p0, v0}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 233
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 235
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p0, 0x50

    .line 238
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    return-object p2
.end method

.method public static createDrawable(IF)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "radius"
        }
    .end annotation

    .line 611
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 612
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 613
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 614
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public static createDrawable(IFFFF)Landroid/graphics/drawable/Drawable;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "tlRadius",
            "trRadius",
            "brRadius",
            "blRadius"
        }
    .end annotation

    .line 620
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 621
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 622
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p0, 0x8

    new-array p0, p0, [F

    aput p1, p0, v1

    const/4 v1, 0x1

    aput p1, p0, v1

    const/4 p1, 0x2

    aput p2, p0, p1

    const/4 p1, 0x3

    aput p2, p0, p1

    const/4 p1, 0x4

    aput p3, p0, p1

    const/4 p1, 0x5

    aput p3, p0, p1

    const/4 p1, 0x6

    aput p4, p0, p1

    const/4 p1, 0x7

    aput p4, p0, p1

    .line 623
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method public static createSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultDrawable",
            "focusDrawable"
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101009c

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 244
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v3, [I

    .line 245
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dipValue"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "group"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 402
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 404
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    .line 405
    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 406
    :cond_1b
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_24

    .line 407
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public static getAppHeight(Landroid/content/Context;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "window"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 89
    :cond_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 90
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 91
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getAppWidth(Landroid/content/Context;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "window"

    .line 95
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 97
    :cond_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 98
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget p0, v0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 257
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    .line 259
    :cond_b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 262
    invoke-static {p0}, Lcom/lxj/xpopup/util/XPopupUtils;->getNavBarHeight(Landroid/view/Window;)I

    move-result p0

    if-gt v1, p0, :cond_27

    .line 263
    sput v1, Lcom/lxj/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    return v0

    .line 266
    :cond_27
    sget p0, Lcom/lxj/xpopup/util/XPopupUtils;->sDecorViewDelta:I

    sub-int/2addr v1, p0

    return v1
.end method

.method public static getImageType(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const/4 v1, 0x0

    .line 687
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c9
    .catchall {:try_start_6 .. :try_end_b} :catchall_c7

    const/16 p0, 0xc

    :try_start_d
    new-array p0, p0, [B

    .line 689
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_bd

    const/4 v1, 0x1

    .line 690
    invoke-static {p0, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->bytes2HexString([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FFD8FF"

    .line 691
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string p0, "jpg"
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_29} :catch_c4
    .catchall {:try_start_d .. :try_end_29} :catchall_c1

    .line 712
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_31
    return-object p0

    :cond_32
    :try_start_32
    const-string v1, "89504E47"

    .line 693
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string p0, "png"
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3c} :catch_c4
    .catchall {:try_start_32 .. :try_end_3c} :catchall_c1

    .line 712
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_44
    return-object p0

    :cond_45
    :try_start_45
    const-string v1, "47494638"

    .line 695
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string p0, "gif"
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_c4
    .catchall {:try_start_45 .. :try_end_4f} :catchall_c1

    .line 712
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_57
    return-object p0

    :cond_58
    :try_start_58
    const-string v1, "49492A00"

    .line 697
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    const-string v1, "4D4D002A"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_b2

    :cond_69
    const-string v1, "424D"

    .line 699
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string p0, "bmp"
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_73} :catch_c4
    .catchall {:try_start_58 .. :try_end_73} :catchall_c1

    .line 712
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_7b

    :catch_77
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7b
    return-object p0

    :cond_7c
    :try_start_7c
    const-string v1, "52494646"

    .line 701
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "57454250"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string p0, "webp"
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8e} :catch_c4
    .catchall {:try_start_7c .. :try_end_8e} :catchall_c1

    .line 712
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_96
    return-object p0

    :cond_97
    :try_start_97
    const-string v1, "00000100"

    .line 703
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a7

    const-string v1, "00000200"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_bd

    :cond_a7
    const-string p0, "ico"
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a9} :catch_c4
    .catchall {:try_start_97 .. :try_end_a9} :catchall_c1

    .line 712
    :try_start_a9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_b1

    :catch_ad
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b1
    return-object p0

    :cond_b2
    :goto_b2
    :try_start_b2
    const-string p0, "tiff"
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b4} :catch_c4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_c1

    .line 712
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_bc
    return-object p0

    .line 712
    :cond_bd
    :try_start_bd
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d3

    goto :goto_d7

    :catchall_c1
    move-exception p0

    move-object v1, v2

    goto :goto_d8

    :catch_c4
    move-exception p0

    move-object v1, v2

    goto :goto_ca

    :catchall_c7
    move-exception p0

    goto :goto_d8

    :catch_c9
    move-exception p0

    .line 708
    :goto_ca
    :try_start_ca
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c7

    if-eqz v1, :cond_d7

    .line 712
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_d7

    :catch_d3
    move-exception p0

    .line 715
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d7
    :goto_d7
    return-object v0

    :goto_d8
    if-eqz v1, :cond_e2

    .line 712
    :try_start_da
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception v0

    .line 715
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 717
    :cond_e2
    :goto_e2
    throw p0
.end method

.method public static getNavBarHeight(Landroid/view/Window;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/lxj/xpopup/util/XPopupUtils;->isNavBarVisible(Landroid/view/Window;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 137
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_25

    if-eqz p0, :cond_25

    const v0, 0x1020030

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1a

    return v1

    .line 140
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_24
    return v1

    .line 142
    :cond_25
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 143
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3a
    return v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "window"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 106
    :cond_c
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 107
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 108
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/view/Window;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 126
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static hasSetKeyListener(Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.view.View"

    .line 633
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getListenerInfo"

    new-array v3, v0, [Ljava/lang/Class;

    .line 634
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 636
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_19
    new-array v2, v0, [Ljava/lang/Object;

    .line 638
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android.view.View$ListenerInfo"

    .line 639
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mOnKeyListener"

    .line 640
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 641
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_34

    .line 642
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 644
    :cond_34
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3b

    if-eqz p0, :cond_3b

    const/4 v0, 0x1

    :catch_3b
    :cond_3b
    return v0
.end method

.method public static isInRect(FFLandroid/graphics/Rect;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "rect"
        }
    .end annotation

    .line 250
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1e

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1e

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1e

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static isLayoutRtl(Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_18

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_22

    .line 590
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 592
    :goto_22
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public static isNavBarVisible(Landroid/view/Window;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 363
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_d

    return v0

    .line 365
    :cond_d
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3f

    .line 366
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 367
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3c

    .line 370
    :try_start_20
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "navigationBarBackground"

    .line 371
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 372
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_38} :catch_3f

    if-nez v5, :cond_3c

    const/4 v2, 0x1

    goto :goto_40

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catch_3f
    :cond_3f
    const/4 v2, 0x0

    :goto_40
    if-eqz v2, :cond_6f

    .line 385
    invoke-static {}, Lcom/lxj/xpopup/util/FuckRomUtils;->isSamsung()Z

    move-result v2

    if-eqz v2, :cond_65

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_65

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_65

    .line 389
    :try_start_52
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "navigationbar_hide_bar_enabled"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_64

    if-nez p0, :cond_63

    const/4 v0, 0x1

    :cond_63
    return v0

    :catch_64
    nop

    .line 394
    :cond_65
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6e

    const/4 v0, 0x1

    :cond_6e
    move v2, v0

    :cond_6f
    return v2
.end method

.method private static synthetic lambda$applyPopupSize$1(Landroid/view/ViewGroup;IIIILjava/lang/Runnable;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "content",
            "maxWidth",
            "popupWidth",
            "maxHeight",
            "popupHeight",
            "afterApplySize"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_c

    return-void

    .line 178
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    if-lez p1, :cond_47

    if-le v3, p1, :cond_1e

    .line 184
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 185
    :cond_1e
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_38

    .line 186
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_38

    .line 188
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v5

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_38
    if-lez p2, :cond_4d

    .line 193
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4d

    :cond_47
    if-lez p2, :cond_4d

    .line 197
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_4d
    :goto_4d
    if-lez p3, :cond_6a

    .line 202
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-le p1, p3, :cond_5b

    .line 203
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5b
    if-lez p4, :cond_70

    .line 205
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_70

    :cond_6a
    if-lez p4, :cond_70

    .line 209
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    iput p4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 216
    :cond_70
    :goto_70
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance p1, Lcom/lxj/xpopup/util/XPopupUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p5}, Lcom/lxj/xpopup/util/XPopupUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$null$0(Ljava/lang/Runnable;)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "afterApplySize"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 220
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static moveDown(Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pv"
        }
    .end annotation

    .line 349
    instance-of v0, p0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-nez v0, :cond_3b

    instance-of v0, p0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-nez v0, :cond_3b

    instance-of v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    if-eqz v0, :cond_d

    goto :goto_3b

    .line 351
    :cond_d
    instance-of v0, p0, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-void

    .line 355
    :cond_1c
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 357
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public static moveUpToKeyboard(ILcom/lxj/xpopup/core/BasePopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "keyboardHeight",
            "pv"
        }
    .end annotation

    .line 274
    sput p0, Lcom/lxj/xpopup/util/XPopupUtils;->preKeyboardHeight:I

    .line 275
    new-instance p0, Lcom/lxj/xpopup/util/XPopupUtils$1;

    invoke-direct {p0, p1}, Lcom/lxj/xpopup/util/XPopupUtils$1;-><init>(Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static moveUpToKeyboardInternal(ILcom/lxj/xpopup/core/BasePopupView;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyboardHeight",
            "pv"
        }
    .end annotation

    .line 284
    iget-object v0, p1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/lxj/xpopup/core/PopupInfo;

    if-eqz v0, :cond_e5

    iget-object v0, v0, Lcom/lxj/xpopup/core/PopupInfo;->isMoveUpToKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_e5

    .line 286
    :cond_e
    instance-of v0, p1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-nez v0, :cond_e5

    instance-of v0, p1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-nez v0, :cond_e5

    instance-of v0, p1, Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    if-eqz v0, :cond_1c

    goto/16 :goto_e5

    .line 290
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-static {v0, p1}, Lcom/lxj/xpopup/util/XPopupUtils;->findAllEditText(Ljava/util/ArrayList;Landroid/view/ViewGroup;)V

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 294
    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v1, v2

    .line 301
    :cond_3c
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 302
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 303
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 304
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 305
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupImplView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 308
    :cond_69
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_7f

    new-array v5, v3, [I

    .line 313
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->getLocationInWindow([I)V

    const/4 v6, 0x1

    .line 314
    aget v5, v5, v6

    .line 315
    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_80

    :cond_7f
    const/4 v5, 0x0

    .line 318
    :goto_80
    instance-of v6, p1, Lcom/lxj/xpopup/impl/FullScreenPopupView;

    if-nez v6, :cond_b3

    instance-of v6, p1, Lcom/lxj/xpopup/core/DrawerPopupView;

    if-eqz v6, :cond_89

    goto :goto_b3

    .line 324
    :cond_89
    instance-of v6, p1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v6, :cond_96

    add-int/2addr v0, v2

    .line 325
    div-int/2addr v0, v3

    add-int/2addr v0, p0

    sub-int/2addr v0, v2

    .line 330
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_c4

    .line 331
    :cond_96
    instance-of v0, p1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v0, :cond_9b

    goto :goto_c4

    .line 333
    :cond_9b
    instance-of v0, p1, Lcom/lxj/xpopup/impl/PartShadowPopupView;

    if-eqz v0, :cond_b1

    add-int/2addr v5, p0

    sub-int/2addr v5, v2

    int-to-float p0, v5

    .line 335
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    if-eqz v1, :cond_b1

    if-lez p0, :cond_b1

    goto :goto_c4

    :cond_b1
    const/4 p0, 0x0

    goto :goto_c4

    :cond_b3
    :goto_b3
    add-int/2addr v5, p0

    sub-int/2addr v5, v2

    int-to-float p0, v5

    .line 320
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    if-eqz v1, :cond_b1

    if-lez p0, :cond_b1

    :goto_c4
    const/16 v0, 0xb4

    .line 341
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->getPopupContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-long v0, v0

    .line 342
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    .line 343
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e5
    :goto_e5
    return-void
.end method

.method public static renderScriptBlur(Landroid/content/Context;Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "src",
            "radius",
            "recycle"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    goto :goto_c

    .line 521
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 523
    :goto_c
    :try_start_c
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_40

    .line 524
    :try_start_10
    new-instance p3, Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-direct {p3}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    invoke-virtual {p0, p3}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 525
    sget-object p3, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {p0, p1, p3, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p3

    .line 529
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 530
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 531
    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 532
    invoke-virtual {v1, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 533
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_3e

    .line 537
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1

    :catchall_3e
    move-exception p1

    goto :goto_42

    :catchall_40
    move-exception p1

    const/4 p0, 0x0

    :goto_42
    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 539
    :cond_47
    throw p1
.end method

.method public static saveBmpToAlbum(Landroid/content/Context;Lcom/lxj/xpopup/interfaces/XPopupImageLoader;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "imageLoader",
            "uri"
        }
    .end annotation

    .line 413
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 414
    new-instance v1, Lcom/lxj/xpopup/util/XPopupUtils$2;

    invoke-direct {v1, p1, p0, p2}, Lcom/lxj/xpopup/util/XPopupUtils$2;-><init>(Lcom/lxj/xpopup/interfaces/XPopupImageLoader;Landroid/content/Context;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCursorDrawableColor(Landroid/widget/EditText;I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "et",
            "color"
        }
    .end annotation

    return-void
.end method

.method public static setVisible(Landroid/view/View;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isVisible"
        }
    .end annotation

    if-eqz p0, :cond_b

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    .line 793
    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public static setWidthHeight(Landroid/view/View;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "width",
            "height"
        }
    .end annotation

    if-gtz p1, :cond_5

    if-gtz p2, :cond_5

    return-void

    .line 165
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-lez p1, :cond_d

    .line 166
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_d
    if-lez p2, :cond_11

    .line 167
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 168
    :cond_11
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "text"
        }
    .end annotation

    .line 475
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 476
    new-instance v1, Lcom/lxj/xpopup/util/XPopupUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/lxj/xpopup/util/XPopupUtils$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static view2Bitmap(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "view",
            "clipHeight",
            "scale"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 555
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    .line 556
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v1

    const/4 v2, 0x1

    .line 557
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const/4 v3, 0x0

    .line 558
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_63

    .line 562
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 563
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 562
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->measure(II)V

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0, v3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 565
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 568
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez p1, :cond_40

    goto :goto_44

    :cond_40
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    :goto_44
    invoke-static {v4, v3, v3, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_72

    .line 570
    :cond_49
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez p1, :cond_50

    goto :goto_54

    :cond_50
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    :goto_54
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 571
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 572
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_72

    .line 575
    :cond_63
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez p1, :cond_6a

    goto :goto_6e

    :cond_6a
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    :goto_6e
    invoke-static {v4, v3, v3, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 577
    :goto_72
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 578
    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 579
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 580
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/2addr p0, p2

    invoke-static {p1, v0, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_94

    if-eq p1, p0, :cond_94

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_94
    return-object p0
.end method

.method private static writeFileFromIS(Ljava/io/OutputStream;Ljava/io/InputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fos",
            "is"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 489
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_30
    .catchall {:try_start_2 .. :try_end_7} :catchall_2e

    const/16 p0, 0x2000

    :try_start_9
    new-array v1, p0, [B

    .line 492
    :goto_b
    invoke-virtual {p1, v1, v0, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_16

    .line 493
    invoke-virtual {v2, v1, v0, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_2b
    .catchall {:try_start_9 .. :try_end_15} :catchall_28

    goto :goto_b

    :cond_16
    const/4 p0, 0x1

    .line 501
    :try_start_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 507
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_27
    return p0

    :catchall_28
    move-exception p0

    move-object v1, v2

    goto :goto_47

    :catch_2b
    move-exception p0

    move-object v1, v2

    goto :goto_31

    :catchall_2e
    move-exception p0

    goto :goto_47

    :catch_30
    move-exception p0

    .line 497
    :goto_31
    :try_start_31
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_2e

    .line 501
    :try_start_34
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p0

    .line 503
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3c
    if-eqz v1, :cond_46

    .line 507
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    .line 510
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_46
    :goto_46
    return v0

    .line 501
    :goto_47
    :try_start_47
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4f
    if-eqz v1, :cond_59

    .line 507
    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p1

    .line 510
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 512
    :cond_59
    :goto_59
    throw p0
.end method
