.class public Lcom/readystatesoftware/systembartint/SystemBarTintManager;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;
    }
.end annotation


# static fields
.field private static sNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

.field private mNavBarAvailable:Z

.field private mNavBarTintView:Landroid/view/View;

.field private mStatusBarAvailable:Z

.field private mStatusBarTintView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2f

    const/4 v0, 0x0

    :try_start_7
    const-string v1, "android.os.SystemProperties"

    .line 53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 54
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "qemu.hw.mainkeys"

    aput-object v3, v2, v6

    .line 56
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    goto :goto_2f

    .line 58
    :catchall_2d
    sput-object v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    :cond_2f
    :goto_2f
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v2, v4, :cond_48

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 94
    fill-array-data v2, :array_6c

    .line 96
    invoke-virtual {p1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 98
    :try_start_1e
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    const/4 v4, 0x1

    .line 99
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_43

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x4000000

    .line 107
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_3b

    .line 108
    iput-boolean v4, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    :cond_3b
    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_48

    .line 112
    iput-boolean v4, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z

    goto :goto_48

    :catchall_43
    move-exception p1

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1

    .line 116
    :cond_48
    :goto_48
    new-instance v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    iget-boolean v2, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    iget-boolean v4, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z

    const/4 v5, 0x0

    invoke-direct {v0, p1, v2, v4, v5}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZLcom/readystatesoftware/systembartint/SystemBarTintManager$1;)V

    iput-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    .line 118
    invoke-virtual {v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->hasNavigtionBar()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 119
    iput-boolean v3, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z

    .line 122
    :cond_5c
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_63

    .line 123
    invoke-direct {p0, p1, v1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 125
    :cond_63
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_6a

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :cond_6a
    return-void

    nop

    :array_6c
    .array-data 4
        0x10103ef
        0x10103f0
    .end array-data
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 45
    sget-object v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->sNavBarOverride:Ljava/lang/String;

    return-object v0
.end method

.method private setupNavBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 5

    .line 336
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    .line 338
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_20

    .line 339
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 340
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2e

    .line 342
    :cond_20
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x5

    .line 343
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 345
    :goto_2e
    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 347
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setupStatusBarView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 5

    .line 323
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    .line 324
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getStatusBarHeight()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    .line 325
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 326
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mNavBarAvailable:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->isNavigationAtBottom()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 327
    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mConfig:Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;

    invoke-virtual {v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 329
    :cond_2b
    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 331
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setStatusBarTintEnabled(Z)V
    .registers 3

    .line 142
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_f

    .line 143
    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public setStatusBarTintResource(I)V
    .registers 3

    .line 220
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarAvailable:Z

    if-eqz v0, :cond_9

    .line 221
    iget-object v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->mStatusBarTintView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    return-void
.end method
