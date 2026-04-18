.class public final Lcom/lxj/xpopup/util/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;,
        Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;
    }
.end annotation


# static fields
.field private static final listenerArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/lxj/xpopup/util/KeyboardUtils;->listenerArray:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 32
    sput v0, Lcom/lxj/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;)I
    .registers 1

    .line 25
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result p0

    return p0
.end method

.method private static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "window"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDecorViewInvisibleHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyboardUtils"

    .line 38
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 41
    invoke-static {p0}, Lcom/lxj/xpopup/util/XPopupUtils;->getNavBarHeight(Landroid/view/Window;)I

    move-result v1

    invoke-static {p0}, Lcom/lxj/xpopup/util/XPopupUtils;->getStatusBarHeight(Landroid/view/Window;)I

    move-result p0

    add-int/2addr v1, p0

    if-gt v0, v1, :cond_43

    .line 42
    sput v0, Lcom/lxj/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_43
    sget p0, Lcom/lxj/xpopup/util/KeyboardUtils;->sDecorViewDelta:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public static hideSoftInput(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static registerSoftInputChangedListener(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;Lcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "window",
            "popupView",
            "listener"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_11
    const v0, 0x1020002

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 61
    invoke-static {p0}, Lcom/lxj/xpopup/util/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v3

    aput v3, v1, v2

    .line 62
    new-instance v2, Lcom/lxj/xpopup/util/KeyboardUtils$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/lxj/xpopup/util/KeyboardUtils$1;-><init>(Landroid/view/Window;[ILcom/lxj/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 72
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    sget-object p0, Lcom/lxj/xpopup/util/KeyboardUtils;->listenerArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeLayoutChangeListener(Landroid/view/Window;Lcom/lxj/xpopup/core/BasePopupView;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "popupView"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const v0, 0x1020002

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_d

    return-void

    .line 81
    :cond_d
    sget-object v0, Lcom/lxj/xpopup/util/KeyboardUtils;->listenerArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_29

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 85
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_29
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "view"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 91
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_12

    return-void

    :cond_12
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 v2, 0x0

    .line 96
    new-instance v3, Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lxj/xpopup/util/KeyboardUtils$SoftInputReceiver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    const/4 p0, 0x2

    .line 97
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method

.method public static toggleSoftInput(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "input_method"

    .line 120
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-nez p0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
