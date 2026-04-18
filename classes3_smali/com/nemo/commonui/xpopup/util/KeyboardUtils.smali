.class public final Lcom/nemo/commonui/xpopup/util/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;
    }
.end annotation


# static fields
.field private static listenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private static sDecorViewDelta:I

.field public static sDecorViewInvisibleHeightPre:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->listenerMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 31
    sput v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)I
    .registers 1

    .line 22
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .line 22
    sget-object v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->listenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getDecorViewInvisibleHeight(Landroid/app/Activity;)I
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    .line 35
    sget p0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewInvisibleHeightPre:I

    return p0

    .line 36
    :cond_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 39
    invoke-static {}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->getNavBarHeight()I

    move-result v0

    if-gt p0, v0, :cond_2a

    .line 40
    sput p0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_2a
    sget v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    sub-int/2addr p0, v0

    return p0
.end method

.method private static getNavBarHeight()I
    .registers 4

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_15

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .registers 3

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Landroid/view/View;Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 5

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_16
    const v0, 0x1020002

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 58
    invoke-static {p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/app/Activity;)I

    move-result v1

    sput v1, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->sDecorViewInvisibleHeightPre:I

    .line 59
    sget-object v1, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p1, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$1;

    invoke-direct {p1, p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils$1;-><init>(Landroid/app/Activity;)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 78
    sput-object v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p0, :cond_6

    return-void

    :cond_6
    const v0, 0x1020002

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_10

    return-void

    .line 82
    :cond_10
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sget-object v0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    sget-object p0, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .registers 3

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 98
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
