.class public Lcom/chuanglan/shanyan_sdk/tool/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    const/16 v0, 0x1f06

    goto :goto_b

    :cond_9
    const/16 v0, 0xf07

    :goto_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public static a(Landroid/app/Activity;IIIIZ)V
    .registers 9

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    int-to-float p1, p1

    invoke-static {v2, p1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    int-to-float p1, p2

    invoke-static {p0, p1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz p5, :cond_27

    const/16 p0, 0x50

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_29

    :cond_27
    iput p4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_29
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;II)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;III)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v2, p4

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_2b

    if-ne p4, v3, :cond_2b

    invoke-virtual {v0, v2, p3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_42

    :cond_2b
    if-ne p2, v3, :cond_33

    if-eq p4, v3, :cond_33

    invoke-virtual {v0, v2, v2, v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_42

    :cond_33
    if-eq p2, v3, :cond_3b

    if-ne p4, v3, :cond_3b

    invoke-virtual {v0, v1, p3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_42

    :cond_3b
    if-eq p2, v3, :cond_42

    if-eq p4, v3, :cond_42

    invoke-virtual {v0, v1, v2, v2, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_42
    :goto_42
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 p3, 0xe

    const/16 v0, 0xa

    if-ne p2, v3, :cond_56

    if-ne p4, v3, :cond_56

    :goto_4f
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_52
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6c

    :cond_56
    const/16 v1, 0xc

    if-ne p2, v3, :cond_60

    if-eq p4, v3, :cond_60

    :goto_5c
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_52

    :cond_60
    const/16 p3, 0x9

    if-eq p2, v3, :cond_67

    if-ne p4, v3, :cond_67

    goto :goto_4f

    :cond_67
    if-eq p2, v3, :cond_6c

    if-eq p4, v3, :cond_6c

    goto :goto_5c

    :cond_6c
    :goto_6c
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IIIII)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v3, p4

    invoke-static {p0, v3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    if-ne p2, v1, :cond_27

    if-ne p4, v1, :cond_27

    invoke-virtual {v2, v4, p3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_27
    if-ne p2, v1, :cond_2f

    if-eq p4, v1, :cond_2f

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_2f
    if-eq p2, v1, :cond_37

    if-ne p4, v1, :cond_37

    invoke-virtual {v2, v0, p3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_37
    if-eq p2, v1, :cond_3e

    if-eq p4, v1, :cond_3e

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3e
    :goto_3e
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    if-eq p6, v1, :cond_4c

    int-to-float p6, p6

    invoke-static {p0, p6}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p6

    iput p6, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_4c
    if-ne p5, v1, :cond_5d

    const/high16 p5, 0x423c0000  # 47.0f

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p6

    iput p6, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_64

    :cond_5d
    int-to-float p5, p5

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_64
    const/16 p0, 0xe

    const/16 p5, 0xa

    if-ne p2, v1, :cond_73

    if-ne p4, v1, :cond_73

    :goto_6c
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_6f
    invoke-virtual {p3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_89

    :cond_73
    const/16 p6, 0xc

    if-ne p2, v1, :cond_7d

    if-eq p4, v1, :cond_7d

    :goto_79
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6f

    :cond_7d
    const/16 p0, 0x9

    if-eq p2, v1, :cond_84

    if-ne p4, v1, :cond_84

    goto :goto_6c

    :cond_84
    if-eq p2, v1, :cond_89

    if-eq p4, v1, :cond_89

    goto :goto_79

    :cond_89
    :goto_89
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IIIIILandroid/widget/ImageView;)V
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v0, p3

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float v3, p4

    invoke-static {p0, v3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne p3, v5, :cond_27

    if-ne p4, v5, :cond_27

    invoke-virtual {v2, p2, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_27
    if-ne p3, v5, :cond_2f

    if-eq p4, v5, :cond_2f

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_2f
    if-eq p3, v5, :cond_37

    if-ne p4, v5, :cond_37

    invoke-virtual {v2, p2, v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_37
    if-eq p3, v5, :cond_3e

    if-eq p4, v5, :cond_3e

    invoke-virtual {v2, v4, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3e
    :goto_3e
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eq p6, v5, :cond_51

    int-to-float p6, p6

    invoke-static {p0, p6}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p6

    iput p6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_53

    :cond_51
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_53
    if-ne p5, v5, :cond_58

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5f

    :cond_58
    int-to-float p5, p5

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5f
    invoke-virtual {p7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0xf

    const/16 p5, 0x9

    if-ne p3, v5, :cond_71

    if-ne p4, v5, :cond_71

    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_6d
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_92

    :cond_71
    const/16 p6, 0xb

    if-ne p3, v5, :cond_7b

    if-eq p4, v5, :cond_7b

    invoke-virtual {p2, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_6d

    :cond_7b
    const/16 p0, 0xa

    if-eq p3, v5, :cond_88

    if-ne p4, v5, :cond_88

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_92

    :cond_88
    if-eq p3, v5, :cond_92

    if-eq p4, v5, :cond_92

    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_92
    :goto_92
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/RelativeLayout;IIIIII)V
    .registers 11

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p2

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float p4, p4

    invoke-static {p0, p4}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p4

    int-to-float p5, p5

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p5

    int-to-float v0, p6

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, p7

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/4 p4, -0x1

    const/4 p5, 0x0

    if-eq p6, p4, :cond_3a

    if-eq p7, p4, :cond_3a

    neg-int p2, p2

    add-int/2addr p2, v0

    neg-int p3, p3

    add-int/2addr p3, p0

    invoke-virtual {v1, p2, p3, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_51

    :cond_3a
    if-eq p6, p4, :cond_44

    if-ne p7, p4, :cond_44

    neg-int p0, p2

    add-int/2addr p0, v0

    invoke-virtual {v1, p0, p5, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_51

    :cond_44
    if-ne p6, p4, :cond_4e

    if-eq p7, p4, :cond_4e

    neg-int p2, p3

    add-int/2addr p2, p0

    invoke-virtual {v1, p5, p2, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_51

    :cond_4e
    invoke-virtual {v1, p5, p5, p5, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_51
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    if-eq p7, p4, :cond_5e

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_63

    :cond_5e
    const/16 p2, 0xf

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_63
    const/16 p2, 0x9

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_70

    :catch_6c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_70
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;)V
    .registers 8

    :try_start_0
    const-string v0, "UIShanYanTask"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "clCustomViewSetting"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getMarginLeft()I

    move-result v2

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getMarginTop()I

    move-result v3

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getMarginRight()I

    move-result v4

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getMarginBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getWidth()I

    move-result v1

    if-eq v2, v1, :cond_3f

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_3f
    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getHeight()I

    move-result v1

    if-eq v2, v1, :cond_50

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_50
    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getHorizontalRule()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getVerticalRule()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6a
    return-void
.end method

.method public static a(Landroid/view/Window;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/high16 v3, 0x4000000

    if-lt v1, v2, :cond_2b

    invoke-virtual {p0, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 v2, 0x17

    if-lt v1, v2, :cond_22

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_22
    const/high16 v1, -0x80000000

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_46

    :cond_2b
    const/16 v2, 0x13

    if-lt v1, v2, :cond_46

    invoke-virtual {p0, v3}, Landroid/view/Window;->addFlags(I)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    goto :goto_46

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initSystemBarTint Exception_e="

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "ExceptionShanYanTask"

    invoke-static {p0, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public static a(Landroid/view/Window;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyStatusBarHidden()Z

    move-result v1

    const/16 v2, 0x400

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_10

    :cond_d
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_24

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyLightColor()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2d

    :cond_24
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2d
    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyStatusBarColor()I

    move-result v5

    const/high16 v6, 0x8000000

    const/high16 v7, -0x80000000

    const/high16 v8, 0x4000000

    const/16 v9, 0x15

    if-ne v4, v5, :cond_72

    if-lt v1, v9, :cond_6a

    const/high16 v4, 0xc000000

    invoke-virtual {p0, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-lt v1, v3, :cond_63

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyLightColor()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_63

    :cond_5a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_63
    :goto_63
    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_8e

    :cond_6a
    const/16 v2, 0x13

    if-lt v1, v2, :cond_8e

    invoke-virtual {p0, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_8e

    :cond_72
    if-lt v1, v9, :cond_8e

    invoke-virtual {p0, v8}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v8}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyStatusBarColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getPrivacyStatusBarColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_8e
    :goto_8e
    if-lt v1, v9, :cond_c7

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isPrivacyVirtualKeyTransparent()Z

    move-result p1

    if-eqz p1, :cond_c7

    invoke-virtual {p0, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b0} :catch_b1

    goto :goto_c7

    :catch_b1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initPrivacySystemBarTint Exception_e="

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/view/Window;)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method public static a(Lcom/chuanglan/shanyan_sdk/view/a;Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const-string v0, "startBgVideo Exception_e="

    const-string v1, "ExceptionShanYanTask"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Landroid/widget/VideoView;->setVisibility(I)V

    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_90
    .catchall {:try_start_8 .. :try_end_17} :catchall_8e

    :try_start_17
    const-string v8, "http://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2c

    const-string v8, "https://"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    goto :goto_2c

    :cond_28
    invoke-virtual {v7, p1, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_34

    :cond_2c
    :goto_2c
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7, p2, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    :goto_34
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_38} :catch_43
    .catchall {:try_start_17 .. :try_end_38} :catchall_41

    :try_start_38
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_8e

    goto :goto_4d

    :catch_3c
    move-exception p2

    :goto_3d
    :try_start_3d
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_90
    .catchall {:try_start_3d .. :try_end_40} :catchall_8e

    goto :goto_4d

    :catchall_41
    move-exception p0

    goto :goto_85

    :catch_43
    move-exception p2

    :try_start_44
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_41

    :try_start_47
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_8e

    goto :goto_4d

    :catch_4b
    move-exception p2

    goto :goto_3d

    :goto_4d
    :try_start_4d
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p2, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    new-instance p1, Lcom/chuanglan/shanyan_sdk/tool/o$1;

    invoke-direct {p1, p0}, Lcom/chuanglan/shanyan_sdk/tool/o$1;-><init>(Lcom/chuanglan/shanyan_sdk/view/a;)V

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/chuanglan/shanyan_sdk/tool/o$2;

    invoke-direct {p1, p0}, Lcom/chuanglan/shanyan_sdk/tool/o$2;-><init>(Lcom/chuanglan/shanyan_sdk/view/a;)V

    invoke-virtual {p0, p1}, Lcom/chuanglan/shanyan_sdk/view/a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Lcom/chuanglan/shanyan_sdk/tool/o$3;

    invoke-direct {p1}, Lcom/chuanglan/shanyan_sdk/tool/o$3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_74} :catch_90
    .catchall {:try_start_4d .. :try_end_74} :catchall_8e

    if-eqz v5, :cond_a7

    :try_start_76
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_a7

    :catch_7a
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    aput-object p0, p1, v2

    invoke-static {v1, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4

    :goto_85
    :try_start_85
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89
    .catchall {:try_start_85 .. :try_end_88} :catchall_8e

    goto :goto_8d

    :catch_89
    move-exception p1

    :try_start_8a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8d
    throw p0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8e} :catch_90
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p0

    goto :goto_a8

    :catch_90
    move-exception p0

    :try_start_91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_8e

    if-eqz v5, :cond_a7

    :try_start_96
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_a7

    :catch_9a
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    aput-object p0, p1, v2

    invoke-static {v1, p1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a7
    :goto_a7
    return-void

    :goto_a8
    if-eqz v5, :cond_bb

    :try_start_aa
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_bb

    :catch_ae
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v4

    aput-object p1, p2, v2

    invoke-static {v1, p2}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_bb
    :goto_bb
    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/view/View;IIIII)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p3, p3

    invoke-static {p0, p3}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p3

    int-to-float v0, p2

    invoke-static {p0, v0}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v2, p4

    invoke-static {p0, v2}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_27

    if-ne p4, v4, :cond_27

    invoke-virtual {v1, v3, p3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_27
    if-ne p2, v4, :cond_2f

    if-eq p4, v4, :cond_2f

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_2f
    if-eq p2, v4, :cond_37

    if-ne p4, v4, :cond_37

    invoke-virtual {v1, v0, p3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_3e

    :cond_37
    if-eq p2, v4, :cond_3e

    if-eq p4, v4, :cond_3e

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_3e
    :goto_3e
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    if-eq p6, v4, :cond_4c

    int-to-float p6, p6

    invoke-static {p0, p6}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p6

    iput p6, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_4c
    if-eq p5, v4, :cond_55

    int-to-float p5, p5

    invoke-static {p0, p5}, Lcom/chuanglan/shanyan_sdk/utils/c;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_55
    const/16 p0, 0xe

    const/16 p5, 0xa

    if-ne p2, v4, :cond_64

    if-ne p4, v4, :cond_64

    :goto_5d
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_60
    invoke-virtual {p3, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_7a

    :cond_64
    const/16 p6, 0xc

    if-ne p2, v4, :cond_6e

    if-eq p4, v4, :cond_6e

    :goto_6a
    invoke-virtual {p3, p6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_60

    :cond_6e
    const/16 p0, 0x9

    if-eq p2, v4, :cond_75

    if-ne p4, v4, :cond_75

    goto :goto_5d

    :cond_75
    if-eq p2, v4, :cond_7a

    if-eq p4, v4, :cond_7a

    goto :goto_6a

    :cond_7a
    :goto_7a
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static b(Landroid/view/Window;Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isStatusBarHidden()Z

    move-result v1

    const/16 v2, 0x400

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_10

    :cond_d
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_24

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isLightColor()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2d

    :cond_24
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2d
    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getStatusBarColor()I

    move-result v5

    const/high16 v6, 0x8000000

    const/high16 v7, -0x80000000

    const/high16 v8, 0x4000000

    const/16 v9, 0x15

    if-ne v4, v5, :cond_72

    if-lt v1, v9, :cond_6a

    const/high16 v4, 0xc000000

    invoke-virtual {p0, v4}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-lt v1, v3, :cond_63

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isLightColor()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_63

    :cond_5a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_63
    :goto_63
    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_8e

    :cond_6a
    const/16 v2, 0x13

    if-lt v1, v2, :cond_8e

    invoke-virtual {p0, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_8e

    :cond_72
    if-lt v1, v9, :cond_8e

    invoke-virtual {p0, v8}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v8}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_8e
    :goto_8e
    if-lt v1, v9, :cond_c7

    invoke-virtual {p1}, Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;->isVirtualKeyTransparent()Z

    move-result p1

    if-eqz p1, :cond_c7

    invoke-virtual {p0, v6}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b0} :catch_b1

    goto :goto_c7

    :catch_b1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initSystemBarTint config Exception_e="

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "ExceptionShanYanTask"

    invoke-static {p1, v1}, Lcom/chuanglan/shanyan_sdk/utils/o;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/tool/o;->a(Landroid/view/Window;)V

    :cond_c7
    :goto_c7
    return-void
.end method
