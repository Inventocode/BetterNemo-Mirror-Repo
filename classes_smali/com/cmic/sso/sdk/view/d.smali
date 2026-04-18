.class public Lcom/cmic/sso/sdk/view/d;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_16

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_16
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    float-to-int p0, p1

    return p0

    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_18

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_18
    float-to-int p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/view/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableString;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cmic/sso/sdk/view/c;",
            "Ljava/util/ArrayList<",
            "Lcom/cmic/sso/sdk/view/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :try_start_5
    new-instance v1, Lcom/cmic/sso/sdk/view/d$1;

    invoke-direct {v1, p0, p3}, Lcom/cmic/sso/sdk/view/d$1;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/view/c;)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p3, v2, :cond_18

    new-instance p3, Lcom/cmic/sso/sdk/view/d$2;

    invoke-direct {p3, p0, p4}, Lcom/cmic/sso/sdk/view/d$2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_19

    :cond_18
    move-object p3, v3

    :goto_19
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_26

    new-instance v4, Lcom/cmic/sso/sdk/view/d$3;

    invoke-direct {v4, p0, p4}, Lcom/cmic/sso/sdk/view/d$3;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_27

    :cond_26
    move-object v4, v3

    :goto_27
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_34

    new-instance v6, Lcom/cmic/sso/sdk/view/d$4;

    invoke-direct {v6, p0, p4}, Lcom/cmic/sso/sdk/view/d$4;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_35

    :cond_34
    move-object v6, v3

    :goto_35
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_41

    new-instance v3, Lcom/cmic/sso/sdk/view/d$5;

    invoke-direct {v3, p0, p4}, Lcom/cmic/sso/sdk/view/d$5;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_41
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    const/16 v8, 0x22

    invoke-virtual {v0, v1, p0, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x0

    if-lt p0, v2, :cond_70

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, p3, v1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :goto_71
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v5, :cond_94

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0, v4, v1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_94
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v7, :cond_b7

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {v0, v6, p0, p2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b7
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v9, :cond_da

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v3, p1, p0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_da} :catch_db

    :cond_da
    return-object v0

    :catch_db
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
    .registers 12

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x2

    if-eqz p1, :cond_12

    const/4 v3, -0x2

    goto :goto_18

    :cond_12
    const/high16 v3, 0x42440000  # 49.0f

    invoke-static {p0, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    :goto_18
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavTextColor()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_57

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1

    :cond_57
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ImageButton;

    invoke-direct {p1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavReturnImgWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-static {p0, p4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result p4

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavReturnImgHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0x9

    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0xf

    invoke-virtual {p2, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 p4, 0x41400000  # 12.0f

    invoke-static {p0, p4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setId(I)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :try_start_99
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNavColor()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a8} :catch_a9

    goto :goto_af

    :catch_a9
    const p2, -0xff7930

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_af
    const-string p2, "umcsdk_return_bg"

    invoke-static {p0, p2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageResource(I)V

    return-object v1
.end method

.method public static b(Landroid/content/Context;)I
    .registers 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_16

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_16
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method
