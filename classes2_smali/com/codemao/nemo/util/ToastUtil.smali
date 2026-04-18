.class public Lcom/codemao/nemo/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$1nVeO_Cb8ZMSVSaVEmFzxAb1VQk(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showDefaultShortToast$3(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4OyjjgcL3Nu5fjzFaJ_KUb16wQ(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showCenterShortToast$7(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fM1TjBR8HCm5L8Byh9_M_j_9tDk(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showDefaultShortToast$1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQqihVKtMDG3z5rZcy64LoYYiV8(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showDefaultShortToastCenter$2(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2N5QdkqbMsrUvYqVmAfVHCcq7w(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showNetErrorToast$5(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vSQoldc8Qgq3U4-J8MkhRuGlgOc(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->lambda$showServerErrorToast$6(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d030c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a07bd

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1c

    return-void

    .line 36
    :cond_1c
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    sget-object p1, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_26

    .line 38
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 40
    :cond_26
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 42
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/codemao/nemo/util/ToastUtil;->hookToast(Landroid/widget/Toast;)V

    return-void
.end method

.method private static hookToast(Landroid/widget/Toast;)V
    .registers 4

    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3a

    .line 192
    const-class v0, Landroid/widget/Toast;

    :try_start_c
    const-string v1, "mTN"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 206
    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/util/ToastUtil$HandlerProxy;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private static synthetic lambda$showCenterShortToast$7(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 153
    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 154
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 155
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 156
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 158
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3fd999999999999aL  # 0.4

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x30

    .line 159
    invoke-static {p1, v0, p0}, Lcom/codemao/nemo/util/ToastUtil;->setGravity(III)V

    .line 160
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showDefaultShortToast$1(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 84
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 85
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 86
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3fa47ae147ae147bL  # 0.04

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x57

    .line 88
    invoke-static {p1, v0, p0}, Lcom/codemao/nemo/util/ToastUtil;->setGravity(III)V

    .line 89
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showDefaultShortToast$3(Landroid/content/Context;I)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 113
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 114
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showDefaultShortToastCenter$2(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 98
    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 99
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 100
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 101
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/16 p0, 0x11

    .line 103
    invoke-static {p0, v0, v0}, Lcom/codemao/nemo/util/ToastUtil;->setGravity(III)V

    .line 104
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showNetErrorToast$5(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "网络不可用，请检查网络设置"

    .line 133
    invoke-static {p0, v1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 134
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showServerErrorToast$6(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const-string v1, "服务器异常，请稍后再试"

    .line 143
    invoke-static {p0, v1, v0}, Lcom/codemao/nemo/util/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 144
    sget-object p0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static setGravity(III)V
    .registers 4

    .line 185
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method

.method public static showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 4

    .line 149
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showDefaultShortToast(Landroid/content/Context;I)V
    .registers 4

    .line 109
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 4

    .line 79
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 4

    .line 94
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showNetErrorToast(Landroid/content/Context;)V
    .registers 3

    .line 129
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showServerErrorToast(Landroid/content/Context;)V
    .registers 3

    .line 139
    sget-object v0, Lcom/codemao/nemo/util/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/util/ToastUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
