.class public Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;
.super Landroid/widget/PopupWindow;
.source "KeyboardHeightProvider.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private keyboardLandscapeHeight:I

.field private keyboardPortraitHeight:I

.field private observer:Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;

.field private parentView:Landroid/view/View;

.field private popupView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 6

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    .line 85
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 86
    sget v1, Lcn/codemao/android/sketch/R$layout;->activity_keyboard_pop_sketch:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/16 v0, 0x15

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const v0, 0x1020002

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    .line 94
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x1

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 97
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider$1;-><init>(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)Landroid/view/View;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->handleOnGlobalLayout()V

    return-void
.end method

.method private getScreenOrientation()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleOnGlobalLayout()V
    .registers 4

    .line 157
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 158
    iget-object v1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 160
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 161
    iget-object v2, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->popupView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 166
    invoke-direct {p0}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->getScreenOrientation()I

    move-result v2

    .line 167
    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(II)V

    goto :goto_3a

    :cond_2c
    const/4 v1, 0x1

    if-ne v2, v1, :cond_35

    .line 172
    iput v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->keyboardPortraitHeight:I

    .line 173
    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(II)V

    goto :goto_3a

    .line 175
    :cond_35
    iput v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->keyboardLandscapeHeight:I

    .line 176
    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->notifyKeyboardHeightChanged(II)V

    :goto_3a
    return-void
.end method

.method private notifyKeyboardHeightChanged(II)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->observer:Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;

    if-eqz v0, :cond_7

    .line 185
    invoke-interface {v0, p1, p2}, Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;->onKeyboardHeightChanged(II)V

    :cond_7
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->observer:Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;

    .line 127
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public setKeyboardHeightObserver(Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->observer:Lcn/codemao/android/sketch/utils/KeyboardHeightObserver;

    return-void
.end method

.method public start()V
    .registers 3

    .line 115
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 116
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcn/codemao/android/sketch/utils/KeyboardHeightProvider;->parentView:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1c
    return-void
.end method
