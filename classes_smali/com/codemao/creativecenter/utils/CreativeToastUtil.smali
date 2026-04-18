.class public Lcom/codemao/creativecenter/utils/CreativeToastUtil;
.super Ljava/lang/Object;
.source "CreativeToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;
    }
.end annotation


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private static createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 29
    sget v1, Lcom/codemao/creativecenter/R$id;->toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    sget-object p1, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_21

    .line 32
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 34
    :cond_21
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 36
    sget-object p0, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 37
    sget-object p0, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->hookToast(Landroid/widget/Toast;)V

    return-void
.end method

.method public static hookToast(Landroid/widget/Toast;)V
    .registers 4

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3a

    .line 143
    const-class v0, Landroid/widget/Toast;

    :try_start_c
    const-string v1, "mTN"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    new-instance v1, Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil$HandlerProxy;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private static setGravity(III)V
    .registers 4

    .line 136
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 137
    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method

.method private static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 4

    .line 91
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_13

    .line 93
    :try_start_4
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1d

    .line 95
    :catch_8
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->hookToast(Landroid/widget/Toast;)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1d

    .line 100
    :cond_13
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->hookToast(Landroid/widget/Toast;)V

    .line 102
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1d
    return-void
.end method

.method public static showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 110
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 111
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 112
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 113
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fd999999999999aL  # 0.4

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0x30

    .line 116
    invoke-static {v2, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->setGravity(III)V

    .line 118
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showDefaultShortToast(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 58
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 44
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 45
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 46
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 47
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fa47ae147ae147bL  # 0.04

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0x57

    .line 49
    invoke-static {v2, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->setGravity(III)V

    .line 51
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showNetErrorToast(Landroid/content/Context;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 76
    :cond_3
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_network_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 125
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 126
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 127
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 128
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3f947ae147ae147bL  # 0.02

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/16 v2, 0x37

    .line 130
    invoke-static {v2, v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->setGravity(III)V

    .line 132
    invoke-static {p0, p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method
