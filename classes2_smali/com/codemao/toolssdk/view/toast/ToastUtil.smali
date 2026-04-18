.class public Lcom/codemao/toolssdk/view/toast/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/toast/ToastUtil$HandlerProxy;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public static synthetic $r8$lambda$BBQj_HejC_gFt3Ui12LlrltEgJs(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->lambda$showCenterShortToast$5(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wi2h6wqpmi0LMYyDAqwaWOORhMw(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->lambda$showTopCenterShortToast$6(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->handler:Landroid/os/Handler;

    return-void
.end method

.method private static createToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .registers 8

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    sget v1, Lcom/codemao/toolssdk/R$id;->tv_toast_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 39
    sget v2, Lcom/codemao/toolssdk/R$id;->iv_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_22

    return-void

    :cond_22
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_warn:I

    packed-switch p2, :pswitch_data_6a

    goto :goto_40

    :pswitch_2c  #0x6
    const/16 p2, 0x8

    .line 65
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    .line 62
    :pswitch_32  #0x5
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_exception:I

    goto :goto_40

    .line 55
    :pswitch_35  #0x4
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_correct:I

    goto :goto_40

    .line 52
    :pswitch_38  #0x3
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_problem:I

    goto :goto_40

    .line 49
    :pswitch_3b  #0x2
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_loading:I

    goto :goto_40

    .line 46
    :pswitch_3e  #0x1
    sget v3, Lcom/codemao/toolssdk/R$drawable;->toolsdk_toast_icon_error:I

    .line 68
    :goto_40
    :pswitch_40  #0x0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez v1, :cond_46

    return-void

    .line 73
    :cond_46
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object p1, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz p1, :cond_50

    .line 75
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 77
    :cond_50
    new-instance p1, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 78
    invoke-virtual {p1, p3}, Landroid/widget/Toast;->setDuration(I)V

    .line 79
    sget-object p0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 80
    sget-object p0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->hookToast(Landroid/widget/Toast;)V

    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_3e  #00000001
        :pswitch_3b  #00000002
        :pswitch_38  #00000003
        :pswitch_35  #00000004
        :pswitch_32  #00000005
        :pswitch_2c  #00000006
    .end packed-switch
.end method

.method private static hookToast(Landroid/widget/Toast;)V
    .registers 4

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3a

    .line 197
    const-class v0, Landroid/widget/Toast;

    :try_start_c
    const-string v1, "mTN"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    new-instance v1, Lcom/codemao/toolssdk/view/toast/ToastUtil$HandlerProxy;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/view/toast/ToastUtil$HandlerProxy;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private static synthetic lambda$showCenterShortToast$5(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 144
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string p2, "window"

    .line 145
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 146
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 147
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3fd999999999999aL  # 0.4

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x30

    .line 148
    invoke-static {p1, v0, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->setGravity(III)V

    .line 149
    sget-object p0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic lambda$showTopCenterShortToast$6(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 164
    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 165
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string p2, "window"

    .line 166
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 167
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3f947ae147ae147bL  # 0.02

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x37

    .line 169
    invoke-static {p1, v0, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->setGravity(III)V

    .line 170
    sget-object p0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static setGravity(III)V
    .registers 4

    .line 190
    sget-object v0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    :cond_7
    return-void
.end method

.method public static showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 139
    sget-object v0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/view/toast/ToastUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/view/toast/ToastUtil$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showTopCenterShortToast(Landroid/content/Context;II)V
    .registers 3

    if-eqz p0, :cond_9

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_9
    return-void
.end method

.method public static showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 160
    sget-object v0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/view/toast/ToastUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/view/toast/ToastUtil$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showTopCenterShortToastNow(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 175
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "显示toast"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 176
    invoke-static {p0, p1, p2, v0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 177
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string p2, "window"

    .line 178
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 179
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 180
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p0, p0

    const-wide v1, 0x3f947ae147ae147bL  # 0.02

    mul-double p0, p0, v1

    double-to-int p0, p0

    const/16 p1, 0x37

    .line 181
    invoke-static {p1, v0, p0}, Lcom/codemao/toolssdk/view/toast/ToastUtil;->setGravity(III)V

    .line 182
    sget-object p0, Lcom/codemao/toolssdk/view/toast/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
